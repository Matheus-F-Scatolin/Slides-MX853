// ==========================================
// AULA 02 — TRABALHOS ESCOLARES (GOOGLE DOCS)
// Curso Básico de Serviços Google · ITT/Unicamp
// ==========================================

#import "../../theme.typ": *

#show: setup-presentation

#let CURSO   = "Curso Básico de Serviços Google"
#let LECTURE = "Aula 02 — Trabalhos Escolares (Google Docs)"

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
#title-slide("Curso Básico", "Aula 02", "Trabalhos Escolares (Google Docs)")

// ------------------------------------------
// SLIDE 4 — SUMÁRIO
// ------------------------------------------
#contents-slide(
  (
    [Salvamento Automático],
    [Formatação Profissional],
    [Trabalho em Grupo],
    [Histórico de Versões],
  ),
  course: CURSO,
  lecture: LECTURE,
)

// ==========================================
// PARTE 1 — SALVAMENTO AUTOMÁTICO
// ==========================================
#section-slide("01", "Salvamento Automático", subtitle: "O fim do \"esqueci de salvar\"")

#content-slide("Fim do \"Esqueci de Salvar\"", [
  #grid(
    columns: (1.4fr, 1fr),
    column-gutter: 60pt,
    align: (left + horizon, center + horizon),
    [
      No Google Docs *você nunca mais perde um trabalho*:

      - Cada letra digitada é *salva na nuvem* automaticamente.
      - Funciona mesmo se *acabar a luz* ou o navegador fechar.
      - O arquivo fica guardado no seu *Google Drive* — acesse de qualquer computador ou celular.
      - Aparece a mensagem _"Todas as alterações salvas no Drive"_ no topo da tela.

      #v(20pt)
      #callout(kind: "tip", title: "Pronto!")[
        Esqueça o velho hábito do *Ctrl + S*. O Docs salva sozinho a cada poucos segundos.
      ]
    ],
    [
      #image(ASSETS + "/google-docs.svg", width: 320pt)
      #v(20pt)
      #text(size: 26pt, fill: text-mute, style: "italic")[
        Google Docs · sempre na nuvem
      ]
    ],
  )
], step: 0, total: 4, course: CURSO, lecture: LECTURE)

// ==========================================
// PARTE 2 — FORMATAÇÃO PROFISSIONAL
// ==========================================
#section-slide("02", "Formatação Profissional", subtitle: "Deixe seu texto com cara de gente grande")

#content-slide("Cara de Profissional", [
  Quatro ajustes simples já transformam *qualquer trabalho escolar* em algo apresentável:

  #v(28pt)
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 36pt,
    row-gutter: 28pt,
    card(
      [Fonte e tamanho],
      [Use *Arial* ou *Times New Roman* em *12pt*. Padrão pedido pela maioria das escolas e faculdades.],
    ),
    card(
      [Espaçamento],
      [Defina entrelinha *1,5* em _Formatar → Espaçamento entre linhas_ — facilita a leitura do professor.],
    ),
    card(
      [Títulos e estilos],
      [Use *Título 1*, *Título 2* e *Texto normal* na barra de estilos. Dá hierarquia e gera *sumário automático*.],
    ),
    card(
      [Alinhamento],
      [Texto *justificado* (Ctrl + Shift + J) para um visual de livro. Mantém as margens alinhadas.],
    ),
  )
], step: 1, total: 4, course: CURSO, lecture: LECTURE)

// ==========================================
// PARTE 3 — TRABALHO EM GRUPO
// ==========================================
#section-slide("03", "Trabalho em Grupo", subtitle: "Adeus, bagunça do \"versão_final_3.docx\"")

#content-slide("Compartilhamento e Edição Simultânea", [
  Compartilhar um Doc com colegas leva *3 passos*:

  #v(24pt)
  #step(1)[Clique no botão *Compartilhar* (canto superior direito, em azul).]
  #v(12pt)
  #step(2)[Digite o *e-mail* dos colegas e escolha o nível: *Leitor*, *Comentarista* ou *Editor*.]
  #v(12pt)
  #step(3)[Clique em *Enviar*. Pronto — todo mundo edita o *mesmo arquivo* ao mesmo tempo.]

  #v(24pt)
  #callout(kind: "info", title: "Como aparece na tela")[
    Cada colaborador vira um *cursor colorido* com o nome ao lado. Você vê em *tempo real* quem digitou o quê — sem mais "qual versão é a final?".
  ]
], step: 2, total: 4, course: CURSO, lecture: LECTURE)

// ==========================================
// PARTE 4 — HISTÓRICO DE VERSÕES
// ==========================================
#section-slide("04", "Histórico de Versões", subtitle: "Sua máquina do tempo dentro do Docs")

#content-slide("A Máquina do Tempo", [
  Apagou um parágrafo sem querer? Um colega bagunçou o trabalho? *Calma — nada se perde.*

  #v(20pt)
  - Vá em *Arquivo → Histórico de versões → Ver histórico de versões*.
  - Aparece uma linha do tempo com *todas as versões* já salvas.
  - Veja *quem editou o quê* (cada autor com uma cor) e em *qual data*.
  - Clique em qualquer versão antiga e use *Restaurar esta versão* para voltar no tempo.

  #v(24pt)
  #callout(kind: "warn", title: "Antes de restaurar")[
    Restaurar *substitui* o documento atual pela versão antiga. Se quiser comparar antes, *copie o trecho* da versão antiga e cole no documento atual.
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
      Bora escrever aquele trabalho nota dez?
    ]
    #v(60pt)
    #block(width: 100pt, height: 6pt, fill: itt-wine)
    #v(28pt)
    #text(size: 26pt, font: sans-stack, fill: text-mute)[
      Instituto Tadao Takahashi · Unicamp
    ]
  ]
]
