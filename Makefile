# Makefile para o curso MX853 — ITT/Unicamp
# Uso:
#   make aula00            # compila a aula 00 (PDF)
#   make watch-aula00      # recompila ao salvar
#   make all               # compila todas as aulas
#   make pages             # exporta cada slide em PNG (pasta pages/ em cada aula)
#   make aula00-pages      # só a aula 00
#   make clean             # remove PDFs e pastas pages/
#
# PNG vs JPEG: o Typst exporta só PNG/SVG por página. Para slides com texto,
# PNG costuma ser melhor (sem artefatos). Resolução: PPI (padrão 144).

TYPST     := typst
ROOT      := .
AULAS_DIR := aulas
PAGES_DIR := pages
# Resolução das imagens (pixels por polegada); sobrescreva na linha de comando, ex.: make pages PPI=200
PPI       := 144

# Cross-platform helpers
ifeq ($(OS),Windows_NT)
  MKDIR_P = if not exist $(subst /,\\,$(1)) mkdir $(subst /,\\,$(1))
  RM_F    = del /f /q $(subst /,\\,$(1)) 2>nul || exit 0
  RM_RF   = rmdir /s /q $(subst /,\\,$(1)) 2>nul || exit 0
else
  MKDIR_P = mkdir -p $(1)
  RM_F    = rm -f $(1)
  RM_RF   = rm -rf $(1)
endif

AULAS := $(notdir $(wildcard $(AULAS_DIR)/*))
# Alvos tipo aula00-pages (lista explícita: GNU Make 3.81 no macOS não aplica %-pages a esses nomes)
AULAS_PAGES := $(addsuffix -pages,$(AULAS))

.PHONY: all clean pages $(AULAS) $(AULAS_PAGES) $(addprefix watch-,$(AULAS))

all: $(AULAS)

$(AULAS):
	$(TYPST) compile --root $(ROOT) $(AULAS_DIR)/$@/$@.typ

pages: $(AULAS_PAGES)

$(AULAS_PAGES):
	$(call MKDIR_P,$(AULAS_DIR)/$(@:%-pages=%)/$(PAGES_DIR))
	$(TYPST) compile --root $(ROOT) --ppi $(PPI) \
		$(AULAS_DIR)/$(@:%-pages=%)/$(@:%-pages=%).typ \
		"$(AULAS_DIR)/$(@:%-pages=%)/$(PAGES_DIR)/slide-{0p}.png"

watch-%:
	$(TYPST) watch --root $(ROOT) $(AULAS_DIR)/$*/$*.typ

clean:
	$(call RM_F,$(AULAS_DIR)/*/*.pdf)
	$(call RM_RF,$(AULAS_DIR)/*/$(PAGES_DIR))

# --- Apresentação final (apresentacao_final/) ---
APRES_DIR := apresentacao_final
APRES_PARTS := modulos modulo-09 conclusao
APRES_PAGES := $(addsuffix -pages,$(APRES_PARTS))
APRES_INTRO_DIR := 0_intro

# Directory mapping for parts where the directory name doesn't match the part name
APRES_DIR_modulo-09 := 9_modulo-09

# Helper macro to get the directory for a part name
get_apres_dir = $(or $(APRES_DIR_$(1)),$(1))

.PHONY: apresentacao-all apresentacao-all-pages apresentacao-clean intro intro-pages $(APRES_PARTS) $(APRES_PAGES)

apresentacao-all: intro $(APRES_PARTS)

apresentacao-all-pages: intro-pages $(APRES_PAGES)

intro:
	$(TYPST) compile --root $(ROOT) $(APRES_DIR)/$(APRES_INTRO_DIR)/intro.typ

intro-pages:
	$(call MKDIR_P,$(APRES_DIR)/$(APRES_INTRO_DIR)/$(PAGES_DIR))
	$(TYPST) compile --root $(ROOT) --ppi $(PPI) \
		$(APRES_DIR)/$(APRES_INTRO_DIR)/intro.typ \
		"$(APRES_DIR)/$(APRES_INTRO_DIR)/$(PAGES_DIR)/slide-{0p}.png"

$(APRES_PARTS):
	$(TYPST) compile --root $(ROOT) $(APRES_DIR)/$(call get_apres_dir,$@)/$@.typ

$(APRES_PAGES):
	$(call MKDIR_P,$(APRES_DIR)/$(call get_apres_dir,$(@:%-pages=%))/$(PAGES_DIR))
	$(TYPST) compile --root $(ROOT) --ppi $(PPI) \
		$(APRES_DIR)/$(call get_apres_dir,$(@:%-pages=%))/$(@:%-pages=%).typ \
		"$(APRES_DIR)/$(call get_apres_dir,$(@:%-pages=%))/$(PAGES_DIR)/slide-{0p}.png"

apresentacao-clean:
	$(call RM_F,$(APRES_DIR)/*/*.pdf)
	$(call RM_F,$(APRES_DIR)/$(APRES_INTRO_DIR)/*.pdf)
	$(call RM_RF,$(APRES_DIR)/*/$(PAGES_DIR))
	$(call RM_RF,$(APRES_DIR)/$(APRES_INTRO_DIR)/$(PAGES_DIR))
