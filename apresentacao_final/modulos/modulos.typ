// Apresentação Final MX853 — Resumo dos 11 módulos
#import "../../theme.typ": *

#show: setup-presentation

#let CURSO   = "MX853 — Conceitos Básicos no Uso do Computador"
#let LECTURE = "Resumo dos módulos"

#let modulo-resumo(titulo, responsavel, entregaveis, objetivo) = {
  content-slide(
    titulo,
    [
      #text(size: 30pt, fill: text-mute)[Responsável: #responsavel]
      #v(20pt)
      #text(size: 32pt, weight: "bold")[Entregáveis]
      #v(8pt)
      #set text(size: 30pt)
      #entregaveis
      #v(24pt)
      #text(size: 32pt, weight: "bold")[Objetivo]
      #v(8pt)
      #set text(size: 30pt)
      #objetivo
    ],
    course: CURSO,
    lecture: LECTURE,
  )
}

#section-slide("01", "Os 11 módulos")

#modulo-resumo(
  "01 — Interação Básica com o Computador",
  "Pietro Fernandes Magaldi",
  [- Vídeo #text(fill: text-mute)[(preencher status)] - Roteiro #text(fill: text-mute)[(preencher)]],
  [[objetivo em uma linha]],
)

#modulo-resumo(
  "02 — Hardware e Software",
  "Adriano Ribeiro Franulovic Campos",
  [- Vídeos (2 aulas) - Slides PDF - Roteiro],
  [[objetivo em uma linha]],
)

#modulo-resumo(
  "03 — Organização Digital",
  "Adriano Ribeiro Franulovic Campos",
  [- Vídeo - Slides PDF],
  [[objetivo em uma linha]],
)

#modulo-resumo(
  "04 — Introdução aos Navegadores e Internet",
  "Lucas Cabral Senno",
  [- 2 vídeos - Roteiros - Slides PDF],
  [[objetivo em uma linha]],
)

#modulo-resumo(
  "05 — Segurança Digital Básica",
  "Lucas Cabral Senno",
  [- 2 vídeos - Roteiros - Slides PDF],
  [[objetivo em uma linha]],
)

#modulo-resumo(
  "06 — Nuvem",
  "Pietro Fernandes Magaldi",
  [- Vídeo],
  [[objetivo em uma linha]],
)

#modulo-resumo(
  "07 — Introdução à IA",
  "Giovani Mambrim Leme",
  [- 3 aulas (roteiro + slides PDF)],
  [[objetivo em uma linha]],
)

#modulo-resumo(
  "08 — IA na Prática",
  "Giovani Mambrim Leme",
  [- Vídeos por ferramenta (ChatGPT, NotebookLM, etc.)],
  [[objetivo em uma linha]],
)

#modulo-resumo(
  "09 — Serviços Gratuitos do Google",
  "Matheus Ferracciú Scatolin",
  [- 6 vídeos - 6 guias PDF - Desafios práticos - Quizzes (Forms)],
  [Usar conta Google, Drive, Gmail, Docs, Planilhas, Agenda e Meet em tarefas escolares e de organização pessoal.],
)

#modulo-resumo(
  "10 — Ferramentas Colaborativas",
  "Everton Romanzini Colombo",
  [- Vídeo intro - PoC Google Docs - Estrutura planejada (M365, Canva, Figma)],
  [[objetivo em uma linha]],
)

#modulo-resumo(
  "11 — Ferramentas de Engajamento",
  "Everton Romanzini Colombo",
  [- Vídeos (Kahoot, Wayground)],
  [[objetivo em uma linha]],
)
