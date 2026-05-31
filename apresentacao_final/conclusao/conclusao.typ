// Apresentação Final MX853 — Conclusão
#import "../../theme.typ": *

#show: setup-presentation

#let CURSO   = "MX853 — Conceitos Básicos no Uso do Computador"
#let LECTURE = "Conclusão"

#let info-card(titulo, texto) = block(
  width: 100%,
  fill: bg-cream,
  stroke: 1pt + rule-soft,
  inset: 18pt,
  radius: 8pt,
)[
  #block(width: 48pt, height: 5pt, fill: itt-wine)
  #v(10pt)
  #text(size: 28pt, weight: "bold", fill: text-dark)[#titulo]
  #v(8pt)
  #text(size: 26pt, fill: text-mute)[#texto]
]

#section-slide(
  "01",
  "Conclusão",
  subtitle: "Encerramento e Visão Geral do Projeto ITT - MX853A",
)

#content-slide("O Projeto em Números", [
  #grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 20pt,
    align: (left + top, left + top, left + top),
    info-card(
      "11 módulos",
      [Curso planejado com materiais por tema, desenvolvidos em equipe.],
    ),
    info-card(
      "Materiais",
      [Vídeos, slides PDF, roteiros e atividades práticas em cada módulo.],
    ),
    info-card(
      "~3h23 de vídeo",
      [Volume total registrado no planejamento do curso.],
    ),
  )
], course: CURSO, lecture: LECTURE)

#content-slide("Principais Aprendizados", [
  #grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 20pt,
    align: (left + top, left + top, left + top),
    info-card(
      "Empatia Técnica",
      [O desafio de traduzir conceitos complexos de TI para uma linguagem acessível e acolhedora ao iniciante absoluto.],
    ),
    info-card(
      "Design Instrucional",
      [Estruturar uma jornada de aprendizado que intercala teoria curta, demonstração em vídeo e prática imediata.],
    ),
    info-card(
      "Gestão Colaborativa",
      [Sincronização de 6 integrantes para criar uma identidade visual e pedagógica coesa em 11 módulos distintos.],
    ),
  )
], course: CURSO, lecture: LECTURE)

#content-slide("O que o Aluno domina agora?", [
  #grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 20pt,
    align: (left + top, left + top, left + top),
    info-card(
      "Autonomia Digital",
      [Capacidade de ligar, configurar e organizar arquivos sem medo de "quebrar" o sistema.],
    ),
    info-card(
      "Navegação Crítica",
      [Uso da internet com discernimento entre busca, links e proteção contra golpes básicos.],
    ),
    info-card(
      "Ferramentas de Nuvem",
      [Domínio de ferramentas gratuitas de IA e do Google para produtividade escolar e profissional.],
    ),
  )
], course: CURSO, lecture: LECTURE)

#content-slide("Limitações e Próximos Passos", [
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 56pt,
    align: (left + top, left + top),
    [
      #text(size: 32pt, weight: "bold", fill: itt-wine-dk)[Limitações atuais]
      #v(14pt)
      - Falta de testes de UX com alunos reais (foco no feedback)
      - Ajustes de acessibilidade (legendas e audiodescrição)
    ],
    [
      #text(size: 32pt, weight: "bold", fill: itt-wine-dk)[Próximos passos]
      #v(14pt)
      - Piloto em escolas públicas de Campinas
      - Criação de novos módulos conforme surgir a demanda
    ],
  )
], course: CURSO, lecture: LECTURE)

#page(fill: bg-paper, margin: 0pt)[
  #place(top + left, rect(width: 100%, height: 18%, fill: itt-wine))
  #place(bottom + left, rect(width: 100%, height: 8pt, fill: unicamp-bk))
  #align(center + horizon)[
    #text(size: 180pt, weight: "bold", fill: itt-wine-dk)[Obrigado!]
    #v(20pt)
    #text(size: 44pt, fill: text-mute)[Perguntas?]
    #v(60pt)
    #block(width: 100pt, height: 6pt, fill: itt-wine)
    #v(28pt)
    #text(size: 26pt, font: sans-stack, fill: text-mute)[
      Instituto Tadao Takahashi · Unicamp
    ]
  ]
]
