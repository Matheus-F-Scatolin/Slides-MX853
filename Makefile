# Makefile para o curso MX853 — ITT/Unicamp
# Uso:
#   make aula00            # compila a aula 00
#   make watch-aula00      # recompila ao salvar
#   make all               # compila todas as aulas
#   make clean             # remove PDFs gerados

TYPST     := typst
ROOT      := .
AULAS_DIR := aulas

AULAS := $(notdir $(wildcard $(AULAS_DIR)/*))

.PHONY: all clean $(AULAS) $(addprefix watch-,$(AULAS))

all: $(AULAS)

$(AULAS):
	$(TYPST) compile --root $(ROOT) $(AULAS_DIR)/$@/$@.typ

watch-%:
	$(TYPST) watch --root $(ROOT) $(AULAS_DIR)/$*/$*.typ

clean:
	rm -f $(AULAS_DIR)/*/*.pdf
