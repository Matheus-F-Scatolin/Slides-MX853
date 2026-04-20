# Briefing para o agente gerador de prompts — Curso MX853 (ITT/Unicamp)

Este documento descreve a infraestrutura de slides do curso para que você
possa redigir prompts melhores ao pedir a um LLM para gerar uma nova aula.
Inclua o conteúdo deste briefing (ou um resumo dele) em todo prompt que
peça código `.typ` para uma aula nova.

---

## 1. Visão geral

- Apresentações são escritas em **Typst** (`.typ`) e compiladas para PDF 16:9
  (1920×1080pt).
- Toda aula reusa o mesmo `theme.typ` (paleta + componentes) e os mesmos
  PDFs base institucionais em `shared/`.
- Cada aula vive em sua própria pasta sob `aulas/aulaXX/` e tem uma
  subpasta `assets/` com **suas** imagens.
- Logos do Google devem ser oficiais (Wikimedia Commons), em SVG.

---

## 2. Estrutura do repositório

```
MX853/
├── README.md
├── Makefile
├── theme.typ                ← tema compartilhado (NÃO duplicar por aula)
├── shared/                  ← PDFs base institucionais (NÃO mexer)
│   ├── slide1.pdf           ← capa ITT
│   └── slide2.pdf           ← slide vermelho institucional
└── aulas/
    ├── aula00/
    │   ├── aula00.typ
    │   ├── aula00.pdf       ← gerado
    │   └── assets/          ← imagens só desta aula
    │       ├── google-drive.svg
    │       └── ...
    └── aulaXX/              ← novas aulas seguem o mesmo padrão
        ├── aulaXX.typ
        └── assets/
```

**Regras de path dentro de `aulas/aulaXX/aulaXX.typ`:**

```typst
#import "../../theme.typ": *
#let SHARED = "../../shared"   // PDFs institucionais
#let ASSETS = "assets"         // imagens locais da aula
```

---

## 3. Compilação

A flag `--root .` é **obrigatória** porque cada aula importa de fora da
sua própria pasta:

```bash
typst compile --root . aulas/aulaXX/aulaXX.typ
# ou:
make aulaXX
make watch-aulaXX     # live-reload ao salvar
```

---

## 4. Identidade visual

Paleta extraída do PDF de capa institucional do ITT:

| Variável        | Hex       | Uso                                  |
| --------------- | --------- | ------------------------------------ |
| `itt-wine`      | `#980000` | títulos, filetes, ícones, faixas     |
| `itt-wine-dk`   | `#6E0000` | títulos secundários, `<strong>`      |
| `itt-wine-lt`   | `#F5E6E6` | fundo de callouts                    |
| `unicamp-bk`    | `#000000` | filete duplo, contraste              |
| `text-dark`     | `#1A1A1A` | texto corrido                        |
| `text-mute`     | `#595959` | texto auxiliar e footer              |
| `bg-paper`      | `#FFFFFF` | fundo padrão                         |
| `bg-cream`      | `#FAF7F4` | fundo de cards e callouts info       |
| `rule-soft`     | `#E5E0DD` | filetes finos divisórios             |

Cores acessórias `g-blue`, `g-red`, `g-yellow`, `g-green` existem mas
**não devem ser usadas para layout** — apenas em ilustrações específicas
quando estritamente necessário. Para logos do Google, prefira sempre
arquivos SVG oficiais em `assets/`.

**Tipografia:**

- Títulos e corpo: `Libertinus Serif` (fallback: New Computer Modern,
  Times New Roman). Estilo serifado, elegante.
- Labels, footer e small-caps: `Avenir Next` (fallback: Helvetica Neue,
  Arial). Estilo sans clean.

---

## 5. Componentes do tema (`theme.typ`)

Sempre comece a aula com:

```typst
#import "../../theme.typ": *
#show: setup-presentation
```

### `title-slide(course, class-num, title)`

Slide de identificação da aula. Faixa vinho à esquerda, número da aula
em preto Unicamp gigante, título em vinho escuro.

```typst
#title-slide("Curso Básico", "Aula 01", "Gmail e Comunicação")
```

### `contents-slide(items, course:, lecture:)`

Sumário tipo livro (com numeração vinho, dotted line e nº de página).
`items` é uma tupla de blocos.

```typst
#contents-slide(
  ([Boas-vindas], [Tópico A], [Tópico B], [Recapitulando]),
  course: CURSO, lecture: LECTURE,
)
```

### `section-slide(number, title, subtitle: none)`

Divisor de seção entre blocos temáticos. Faixa vinho lateral + label
"Seção XX" em small-caps + título grande em vinho escuro.

```typst
#section-slide("02", "Login Mestre", subtitle: "Uma conta para tudo")
```

### `content-slide(title, body, step:, total:, course:, lecture:)`

Slide padrão. Cabeçalho com título vinho + filete duplo (vinho +
preto curto) + dots de progresso à direita. Footer institucional.

```typst
#content-slide("Título do slide", [
  Conteúdo aqui...
], step: 2, total: 5, course: CURSO, lecture: LECTURE)
```

- `step` é o índice da seção atual (0-based) e `total` o nº de seções.
  Os dots à direita acendem em vinho até `step`.
- Use `*negrito*` em palavras-chave: vai automaticamente para vinho escuro.
- Listas (`-`) ganham marcador `▸` vinho; enumerações (`+`) ganham
  numeração vinho.

### `callout(title:, kind:, body)`

Caixa de destaque com barra lateral colorida. Variantes:

- `kind: "tip"` — vinho (padrão, dicas e "Pronto!")
- `kind: "info"` — preto Unicamp (informações neutras)
- `kind: "warn"` — vinho intenso (atenção, segurança)

```typst
#callout(kind: "warn", title: "Segurança")[
  Nunca compartilhe sua senha.
]
```

### `card(title, body, accent: itt-wine)`

Cartão para grids de tópicos (fundo creme, filete vinho no topo).

```typst
#grid(columns: (1fr, 1fr), column-gutter: 40pt,
  card([Método 1], [conteúdo]),
  card([Método 2], [conteúdo]),
)
```

### `step(n, body)`

Passo numerado com bolinha vinho. Use entre passos
`#v(8pt)` a `#v(14pt)` para respiro.

```typst
#step(1)[Abra o navegador e acesse *drive.google.com*]
#v(10pt)
#step(2)[Clique em *Fazer login*]
```

---

## 6. Estrutura recomendada de uma aula

Padrão de 16 slides, ~5 seções:

1. Capa institucional → `#image(SHARED + "/slide1.pdf", ...)` em `#page(margin: 0pt)[...]`
2. Slide vermelho ITT → mesmo padrão com `slide2.pdf`
3. `title-slide` com nome da aula
4. `contents-slide` com lista de seções
5. Para cada seção (~3-4):
   - 1× `section-slide("0X", "Nome", subtitle: "...")`
   - 1-2× `content-slide(...)` com `step: X-1, total: <N>`
6. Slide final "Obrigado!" custom (ver `aula00.typ` como referência)

---

## 7. Constantes que toda aula deve declarar

```typst
#let CURSO   = "Curso Básico de Serviços Google"
#let LECTURE = "Aula XX — Nome da Aula"
#let SHARED  = "../../shared"
#let ASSETS  = "assets"
```

E passar `course: CURSO, lecture: LECTURE` em todo `content-slide` e
`contents-slide` para o footer ficar consistente.

---

## 8. Logos e ativos

- **Use SEMPRE logos oficiais do Wikimedia Commons** (não inventar SVG
  em vinho/preto para marcas registradas como Drive, Gmail, Chrome).
- Coloque os SVGs em `aulas/aulaXX/assets/` com nomes descritivos:
  `google-drive.svg`, `gmail.svg`, `google-meet.svg`, etc.
- Para inserir um ícone inline em texto corrido, use
  `#box(image(ASSETS + "/...svg", height: 32pt))`.
- Para destaque em coluna, use larguras 240–380pt.

---

## 9. Armadilhas conhecidas

1. **Encoding UTF-8**: arquivos `.typ` precisam ser UTF-8 puro. Caracteres
   acentuados gravados em Latin-1 ou MacRoman quebram a compilação com
   `error: file is not valid utf-8`.
2. **Overflow vertical**: o conteúdo de um `content-slide` precisa caber
   em uma página, senão o Typst quebra silenciosamente em uma página
   extra (perdendo o cabeçalho e os dots). Conferir `pages` após
   compilar — deve bater com o esperado.
3. **`--root .`**: esquecê-la causa erro `cannot read file outside of
   project root` ao importar o tema.
4. **Cards e callouts ocupam ~3 linhas de altura cada**. Se o slide
   tiver mais de ~6 elementos verticais grandes, distribua em grid
   2-colunas ou divida em dois slides.
5. **`step()` com 5+ passos consecutivos pode estourar**. Reduza
   `#v(...)` entre eles ou parta em dois slides.

---

## 10. Template para o prompt do gerador

Quando for pedir uma aula nova ao LLM, estruture o prompt assim:

> Você é um designer instrucional especialista em Typst. Gere o arquivo
> `aulas/aulaXX/aulaXX.typ` para a aula **"NOME"** do Curso Básico de
> Serviços Google (ITT/Unicamp).
>
> **Restrições obrigatórias:**
>
> - Importar `../../theme.typ` e usar `#show: setup-presentation`
> - Usar PDFs base de `../../shared/slide1.pdf` e `slide2.pdf` nos dois
>   primeiros slides (com `#page(margin: 0pt)[#image(...)]`)
> - Usar `title-slide`, `contents-slide`, `section-slide`,
>   `content-slide`, `callout`, `card`, `step` do tema — NÃO recriar
>   estilos ad-hoc
> - Logos do Google em `assets/` devem ser oficiais (não desenhar SVGs)
> - Manter ~16 slides totais, ~5 seções
> - `step` e `total` corretos em todos os `content-slide` para a barra
>   de progresso funcionar
>
> **Conteúdo da aula:**
>
> - Tópico 1: ...
> - Tópico 2: ...
> - Tópico 3: ...
>
> **Logos necessários para `assets/` (liste para download manual):**
>
> - URL Wikimedia 1
> - URL Wikimedia 2
>
> Devolva: (a) o arquivo `aulaXX.typ` completo em UTF-8, (b) lista de
> URLs dos logos a baixar, (c) comando `make aulaXX` para compilar.

---

## 11. Referência viva

Use `aulas/aula00/aula00.typ` como exemplo canônico — ele exercita
todos os componentes do tema. Quando em dúvida sobre formatação,
consulte esse arquivo antes de inventar.