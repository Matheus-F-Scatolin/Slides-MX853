// ==========================================
// AULA 03 — O PODER DOS DADOS (GOOGLE PLANILHAS)
// Curso Básico de Serviços Google · ITT/Unicamp
// ==========================================

#import "../../theme.typ": *

#show: setup-presentation

#let CURSO   = "Curso Básico de Serviços Google"
#let LECTURE = "Aula 03 — O Poder dos Dados (Google Planilhas)"

// Paths reutilizáveis
#let SHARED  = "../../shared"
#let ASSETS  = "assets"

// ------------------------------------------
// SLIDE 1 — CAPA (PDF base do ITT)
// ------------------------------------------
#page(margin: 0pt)[
  #image(SHARED + "/slide1.pdf", width: 100%, height: 100%)
]

// ------------------------------------------
// SLIDE 2 — FUNDO VERMELHO (PDF base)
// ------------------------------------------
#page(margin: 0pt)[
  #image(SHARED + "/slide2.pdf", width: 100%, height: 100%)
]

// ------------------------------------------
// SLIDE 3 — IDENTIFICAÇÃO DA AULA
// ------------------------------------------
#title-slide("Curso Básico", "Aula 03", "O Poder dos Dados (Google Planilhas)")

// ------------------------------------------
// SLIDE 4 — SUMÁRIO
// ------------------------------------------
#contents-slide(
  (
    [Anatomia da Planilha],
    [A Chave Mestra: o sinal "="],
    [Fórmulas Básicas],
    [Organização e Filtros],
  ),
  course: CURSO,
  lecture: LECTURE,
)

// ==========================================
// PARTE 1 — ANATOMIA DA PLANILHA
// ==========================================
#section-slide("01", "Anatomia da Planilha", subtitle: "Linhas, colunas e células — uma Batalha Naval")

#content-slide("Anatomia da Planilha", [
  #grid(
    columns: (1.4fr, 1fr),
    column-gutter: 60pt,
    align: (left + horizon, center + horizon),
    [
      Pense numa planilha como um *jogo de Batalha Naval*:

      - *Colunas* são as letras do topo: *A, B, C, D...*
      - *Linhas* são os números da lateral: *1, 2, 3, 4...*
      - *Célula* é o cruzamento dos dois — endereço único como *B7* ou *D12*.
      - Clique numa célula e o nome aparece no canto superior esquerdo (a *Caixa de Nome*).

      #v(20pt)
      #callout(kind: "tip", title: "Atalho útil")[
        Aperte *Ctrl + seta* para "voar" até a borda dos dados — perfeito em planilhas grandes.
      ]
    ],
    [
      #image(ASSETS + "/google-sheets.svg", width: 320pt)
      #v(20pt)
      #text(size: 26pt, fill: text-mute, style: "italic")[
        Google Planilhas
      ]
    ],
  )
], step: 0, total: 4, course: CURSO, lecture: LECTURE)

// ==========================================
// PARTE 2 — A CHAVE MESTRA
// ==========================================
#section-slide("02", "A Chave Mestra", subtitle: "O sinal de igual que liga a calculadora")

#content-slide("A Chave Mestra: o sinal \"=\"", [
  Sem o *=* no início, a planilha entende que você está só *escrevendo texto*. Com ele, ela vira uma *calculadora viva*.

  #v(28pt)
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 36pt,
    row-gutter: 28pt,
    card(
      [Operadores básicos],
      [*+* soma, *-* subtrai, *\** multiplica, *\/* divide. Funcionam igual à calculadora do celular.],
    ),
    card(
      [Conta direta],
      [Digite *=10+5* numa célula e aperte *Enter*. A planilha mostra *15* — não a fórmula.],
    ),
    card(
      [Usando endereços],
      [Em vez de números soltos, use *=A1+B1*. Mudou o A1? O resultado *recalcula sozinho*.],
    ),
    card(
      [Ver a fórmula],
      [Clique na célula e olhe a *Barra de Fórmulas* no topo: ela mostra o que está por trás do número.],
    ),
  )
], step: 1, total: 4, course: CURSO, lecture: LECTURE)

// ==========================================
// PARTE 3 — FÓRMULAS BÁSICAS
// ==========================================
#section-slide("03", "Fórmulas Básicas", subtitle: "A mágica do =SOMA() e do =MEDIA()")

#content-slide("=SOMA() e =MEDIA()", [
  Em vez de somar célula por célula, use *funções* que trabalham com *intervalos* (`A1:A10` significa "de A1 até A10"):

  #v(24pt)
  #step(1)[Selecione uma célula vazia (ex: *A11*).]
  #v(12pt)
  #step(2)[Digite *=SOMA(A1:A10)* para somar os 10 valores de cima.]
  #v(12pt)
  #step(3)[Troque *SOMA* por *MEDIA* para ter a *média aritmética* do mesmo intervalo.]

  #v(24pt)
  #callout(kind: "info", title: "Dica de tempo")[
    Com o intervalo *já selecionado*, o canto inferior direito do Sheets mostra automaticamente *soma, média e contagem* — sem precisar digitar nada.
  ]
], step: 2, total: 4, course: CURSO, lecture: LECTURE)

// ==========================================
// PARTE 4 — ORGANIZAÇÃO E FILTROS
// ==========================================
#section-slide("04", "Organização", subtitle: "Formato de moeda e filtros para enxergar melhor")

#content-slide("Moeda e Filtros", [
  Dois recursos *simples* deixam qualquer planilha *mais profissional*:

  #v(20pt)
  - *Formato Moeda (R\$):* selecione as células com valores e clique no ícone *R\$* na barra de ferramentas. Os números viram *R\$ 1.250,00* automaticamente.
  - *Filtros:* selecione a linha de cabeçalho e vá em *Dados → Criar um filtro*. Aparecem *funis* nas colunas.
  - Clique no funil para *ordenar* (A→Z, Z→A) ou *esconder* valores que você não quer ver agora.
  - Os dados *não são apagados* — só ficam ocultos enquanto o filtro está ativo.

  #v(20pt)
  #callout(kind: "warn", title: "Cuidado ao imprimir")[
    Filtros *escondem linhas*. Antes de imprimir ou compartilhar, vá em *Dados → Remover filtro* para garantir que tudo apareça.
  ]
], step: 3, total: 4, course: CURSO, lecture: LECTURE)

// ------------------------------------------
// SLIDE FINAL — OBRIGADO
// ------------------------------------------
#page(fill: bg-paper, margin: 0pt)[
  #place(top + left, rect(width: 100%, height: 18%, fill: itt-wine))
  #place(bottom + left, rect(width: 100%, height: 8pt, fill: unicamp-bk))
  #align(center + horizon)[
    #text(size: 180pt, weight: "bold", fill: itt-wine-dk)[Obrigado!]
    #v(20pt)
    #text(size: 40pt, fill: text-mute, style: "italic")[
      Bora dar superpoderes aos seus dados?
    ]
    #v(60pt)
    #block(width: 100pt, height: 6pt, fill: itt-wine)
    #v(28pt)
    #text(size: 26pt, font: sans-stack, fill: text-mute)[
      Instituto Tadao Takahashi · Unicamp
    ]
  ]
]
