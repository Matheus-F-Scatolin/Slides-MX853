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

AULAS := $(notdir $(wildcard $(AULAS_DIR)/*))
# Alvos tipo aula00-pages (lista explícita: GNU Make 3.81 no macOS não aplica %-pages a esses nomes)
AULAS_PAGES := $(addsuffix -pages,$(AULAS))

.PHONY: all clean pages $(AULAS) $(AULAS_PAGES) $(addprefix watch-,$(AULAS))

all: $(AULAS)

$(AULAS):
	$(TYPST) compile --root $(ROOT) $(AULAS_DIR)/$@/$@.typ

pages: $(AULAS_PAGES)

$(AULAS_PAGES):
	mkdir -p $(AULAS_DIR)/$(@:%-pages=%)/$(PAGES_DIR)
	$(TYPST) compile --root $(ROOT) --ppi $(PPI) \
		$(AULAS_DIR)/$(@:%-pages=%)/$(@:%-pages=%).typ \
		$(AULAS_DIR)/$(@:%-pages=%)/$(PAGES_DIR)/slide-{0p}.png

watch-%:
	$(TYPST) watch --root $(ROOT) $(AULAS_DIR)/$*/$*.typ

clean:
	rm -f $(AULAS_DIR)/*/*.pdf
	rm -rf $(AULAS_DIR)/*/$(PAGES_DIR)

# --- Apresentação final (apresentacao_final/) ---
APRES_DIR := apresentacao_final
APRES_PARTS := modulos modulo-09 conclusao
APRES_PAGES := $(addsuffix -pages,$(APRES_PARTS))
APRES_INTRO_DIR := _intro

.PHONY: apresentacao-all apresentacao-all-pages apresentacao-clean intro intro-pages $(APRES_PARTS) $(APRES_PAGES)

apresentacao-all: intro $(APRES_PARTS)

apresentacao-all-pages: intro-pages $(APRES_PAGES)

intro:
	$(TYPST) compile --root $(ROOT) $(APRES_DIR)/$(APRES_INTRO_DIR)/intro.typ

intro-pages:
	mkdir -p $(APRES_DIR)/$(APRES_INTRO_DIR)/$(PAGES_DIR)
	$(TYPST) compile --root $(ROOT) --ppi $(PPI) \
		$(APRES_DIR)/$(APRES_INTRO_DIR)/intro.typ \
		$(APRES_DIR)/$(APRES_INTRO_DIR)/$(PAGES_DIR)/slide-{0p}.png

$(APRES_PARTS):
	$(TYPST) compile --root $(ROOT) $(APRES_DIR)/$@/$@.typ

$(APRES_PAGES):
	mkdir -p $(APRES_DIR)/$(@:%-pages=%)/$(PAGES_DIR)
	$(TYPST) compile --root $(ROOT) --ppi $(PPI) \
		$(APRES_DIR)/$(@:%-pages=%)/$(@:%-pages=%).typ \
		$(APRES_DIR)/$(@:%-pages=%)/$(PAGES_DIR)/slide-{0p}.png

apresentacao-clean:
	rm -f $(APRES_DIR)/*/*.pdf $(APRES_DIR)/$(APRES_INTRO_DIR)/*.pdf
	rm -rf $(APRES_DIR)/*/$(PAGES_DIR) $(APRES_DIR)/$(APRES_INTRO_DIR)/$(PAGES_DIR)
