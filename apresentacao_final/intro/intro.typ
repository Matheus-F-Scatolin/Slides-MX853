// Apresentação Final MX853 — Introdução
#import "../../theme.typ": *

#show: setup-presentation

#let CURSO   = "MX853 — Conceitos Básicos no Uso do Computador"
#let LECTURE = "Apresentação Final"
#let SHARED  = "../../shared"

#page(margin: 0pt)[
  #image(SHARED + "/slide1.pdf", width: 100%, height: 100%)
]

#page(margin: 0pt)[
  #image(SHARED + "/slide2.pdf", width: 100%, height: 100%)
]

#title-slide(
  "MX853A · 1º sem. 2026",
  "Apresentação Final",
  "Conceitos Básicos no Uso do Computador",
)

#content-slide("Equipe", [
  #set text(size: 28pt)
  #set par(leading: 10pt)
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 40pt,
    row-gutter: 20pt,
    [
      *Giovani Mambrim Leme*\
      g215041\@dac.unicamp.br
    ],
    [
      *Pietro Fernandes Magaldi*\
      p236842\@dac.unicamp.br
    ],
    [
      *Matheus Ferracciú Scatolin*\
      m252099\@dac.unicamp.br
    ],
    [
      *Lucas Cabral Senno*\
      l281816\@dac.unicamp.br
    ],
    [
      *Everton Romanzini Colombo*\
      e257234\@dac.unicamp.br
    ],
    [
      *Adriano Ribeiro Franulovic Campos*\
      a173253\@dac.unicamp.br
    ],
  )
  #v(24pt)
  #set text(size: 28pt, fill: text-mute)
  Orientação: Juliana Freitag Borin (MX853A) · Maria Helena Loureiro Chaves (ITT)
], course: CURSO, lecture: LECTURE)

#content-slide("Projeto e público-alvo", [
  #grid(
    columns: (1.15fr, 0.85fr),
    column-gutter: 44pt,
    align: (left + top, left + top),
    [
      #text(size: 30pt, weight: "bold", fill: itt-wine-dk)[Projeto]
      #v(8pt)
      #set text(size: 28pt)
      #set list(spacing: 14pt)
      - Treinamento *ITT/Unicamp*; vídeos, slides, roteiros, desafios e links gratuitos
      #v(16pt)
      #text(size: 30pt, weight: "bold", fill: itt-wine-dk)[Público-alvo]
      #v(8pt)
      - Iniciante no PC (liga o computador e usa internet)
      - Conteúdo sequencial, linguagem direta e prática por módulo
    ],
    [
      #callout(kind: "info", title: "Carga horária")[
        #set text(size: 28pt)
        Cerca de *10 horas* de curso (~1h40 por aluno).
      ]
      #v(14pt)
      #card([Formato], [
        #set text(size: 26pt)
        Vídeo · slides · desafio · quiz
      ])
    ],
  )
], course: CURSO, lecture: LECTURE)

#content-slide("Mapa do curso (11 módulos)", [
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 56pt,
    align: (left + top, left + top),
    [
      + Interação Básica com o Computador
      + Hardware e Software
      + Organização Digital
      + Introdução aos Navegadores e Internet
      + Segurança Digital Básica
      + Nuvem
    ],
    [
      #set enum(start: 7)
      + Introdução à IA
      + IA na Prática
      + Serviços Gratuitos do Google
      + Ferramentas Colaborativas
      + Ferramentas de Engajamento
    ],
  )
], course: CURSO, lecture: LECTURE)

#content-slide("Organização do grupo", [
  - Seis integrantes, cada um responsável por um ou mais módulos
  - Reuniões semanais na disciplina MX853A (sextas, 14h–15h)
  - Por módulo, em geral: roteiro, vídeo, slides PDF, desafio prático e quiz (quando aplicável)
], course: CURSO, lecture: LECTURE)

#contents-slide(
  (
    [Introdução e contexto],
    [Resumo dos 11 módulos],
    [Módulos (1–11)],
    [Conclusão],
  ),
  course: CURSO,
  lecture: LECTURE,
  page-numbers: false,
)

#section-slide("01", "Módulos do curso", subtitle: "Resumo e apresentação por responsável")
