# Apresentação Final MX853

Slides da apresentação de fechamento do projeto (disciplina MX853A, ITT/Unicamp). Cada parte é um arquivo Typst separado; a montagem final é feita no **Google Slides** com PNGs exportados nesta ordem.

## Estrutura

| Pasta | Arquivo | Função |
|-------|---------|--------|
| `0_intro/` | `intro.typ` | Contexto, equipe, mapa dos 11 módulos, roteiro |
| `modulos/` | `modulos.typ` | Um slide-resumo por módulo (mesmo layout) |
| `9_modulo-09/` | `modulo-09.typ` | Primeira implementação do padrão `modulo-XX/` |
| `conclusao/` | `conclusao.typ` | Entregas, aprendizados, encerramento |

Cada colega deve criar `X_modulo-XX/` (ex: `1_modulo-01/`) copiando o padrão de `9_modulo-09/` (ver abaixo).

## Pré-requisitos

- [Typst](https://typst.app/) instalado (`typst --version`)
- `make` na raiz do repositório

## Compilar PDF (revisão)

Na raiz do repo:

```bash
make intro          # ou: make apresentacao-all (compila as 4 partes)
make modulos
make modulo-09
make conclusao
# atalho: make apresentacao-all
# ou tudo de uma vez:
make apresentacao-all
```

Os PDFs ficam ao lado de cada `.typ` (ex.: `0_intro/intro.pdf`).

Sempre use `--root .` (o Makefile já faz isso). Imports usam `../../theme.typ` e `../../shared/`.

## Exportar PNGs (Google Slides)

```bash
make intro-pages
make modulos-pages
make modulo-09-pages
make conclusao-pages
# ou:
make apresentacao-all-pages
```

Arquivos gerados: `intro/pages/slide-01.png`, `slide-02.png`, … (mesmo padrão nas outras pastas).

Resolução padrão: 144 PPI. Para alterar: `make apresentacao-intro-pages PPI=200`.

## Ordem no Google Slides

Importe as imagens **nesta ordem**, respeitando a numeração dentro de cada pasta:

| Ordem | Pasta | Observação |
|------:|-------|------------|
| 1 | `0_intro/pages/` | Capas ITT + abertura |
| 2 | `modulos/pages/` | 12 slides (seção + 11 módulos) |
| 3 | `1_modulo-01/pages/` … `11_modulo-11/pages/` | Um deck por módulo; hoje só `9_modulo-09` existe |
| 4 | `conclusao/pages/` | Encerramento |

Não é necessário juntar PDFs. A ordem entre pastas define a narrativa da apresentação (~45 min).

Formato dos slides: 16:9 (1920×1080 pt). No Google Slides, use apresentação widescreen.

## Padrão de um módulo (`X_modulo-XX/`)

Copie `9_modulo-09/` como modelo. Sequência de slides:

1. `title-slide` (número e nome do módulo)
2. Ligação com a proposta MX853 (2–4 bullets factuais)
3. Objetivo do módulo (tempo total, entrega esperada)
4. Mapa das unidades/aulas (`card()` em grid)
5. Formato de cada unidade (guia, vídeo, desafio, quiz)
6. `section-slide` (ex.: "Aulas")
7. Um `content-slide` por unidade
8. (Opcional) Slide com área 16:9 para vídeo de demonstração
9. Entrega ao concluir o módulo

(O slide "Obrigado" fica só na `conclusao/`, não em cada módulo.)

Capas ITT (`shared/slide1.pdf` e `slide2.pdf`) ficam **apenas** em `0_intro/`.

### Criar seu módulo

```bash
cp -R apresentacao_final/9_modulo-09 apresentacao_final/4_modulo-04
# Renomear modulo-09.typ → modulo-04.typ e ajustar conteúdo
```

Ajustar:

- `LECTURE` e textos dos slides
- Pasta `assets/` (logos oficiais, se precisar)
- Alvos no Makefile (copiar padrão `apresentacao-modulo-09`)

Peça inclusão dos alvos `apresentacao-modulo-XX` no Makefile ao integrar sua pasta.

## Tom dos textos

- Frases curtas; diga o que o aluno faz ou aprende.
- Evite metáforas de marketing e frases genéricas do material do curso.
- Não use travessão longo (`--`) em títulos ou bullets.
- Todos os módulos no `modulos.typ` usam o mesmo layout (título, responsável, entregáveis, objetivo em uma linha).

## Checklist antes de entregar

- [ ] Arquivo `.typ` em UTF-8
- [ ] `make apresentacao-modulo-XX` sem erro
- [ ] Número de PNGs = número de páginas esperado (sem página extra por overflow)
- [ ] Logos de marcas: SVGs oficiais (não desenhar versões inventadas)
- [ ] Slide-resumo em `modulos.typ` atualizado (objetivo e entregáveis)
- [ ] PNGs importados no Google Slides na ordem da tabela acima

## Referências

- Tema e componentes: [`../theme.typ`](../theme.typ)
- Briefing Typst do curso: [`../README.md`](../README.md) (raiz do repo)
- Exemplo de aula completa: [`../aulas/aula00/aula00.typ`](../aulas/aula00/aula00.typ)
