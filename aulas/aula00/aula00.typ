// ==========================================
// AULA 00 — INTRODUÇÃO E GOOGLE DRIVE
// Curso Básico de Serviços Google · ITT/Unicamp
// ==========================================

#import "../../theme.typ": *

#show: setup-presentation

#let CURSO   = "Curso Básico de Serviços Google"
#let LECTURE = "Aula 00 — Introdução e Google Drive"

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
#title-slide("Curso Básico", "Aula 00", "Introdução e Google Drive")

// ------------------------------------------
// SLIDE 4 — SUMÁRIO
// ------------------------------------------
#contents-slide(
  (
    [Boas-vindas e objetivos],
    [O Login Mestre],
    [A Interface do Drive],
    [Como fazer Upload],
    [Recapitulando],
  ),
  course: CURSO,
  lecture: LECTURE,
)

// ==========================================
// PARTE 1 — BOAS-VINDAS
// ==========================================
#section-slide("01", "Boas-vindas", subtitle: "O que vamos aprender hoje")

#content-slide("Bem-vindo(a) ao curso!", [
  #grid(
    columns: (1.4fr, 1fr),
    column-gutter: 60pt,
    align: (left + horizon, center + horizon),
    [
      Nesta aula, você vai aprender a:

      - Entender o que é o *Login Mestre* da Google
      - *Acessar* o Google Drive pelo navegador
      - Reconhecer os *elementos da interface*
      - Realizar seu primeiro *upload de arquivo*

      #v(20pt)
      #callout(kind: "info", title: "Antes de começar")[
        Tenha em mãos seu e-mail e senha da conta Google, e um arquivo de exemplo no computador.
      ]
    ],
    image(ASSETS + "/google-drive.svg", width: 320pt),
  )
], step: 0, total: 5, course: CURSO, lecture: LECTURE)

// ==========================================
// PARTE 2 — O LOGIN MESTRE
// ==========================================
#section-slide("02", "O Login Mestre", subtitle: "Uma única conta, todos os serviços")

#content-slide("O Login Mestre", [
  Sua *conta Google* é a chave de tudo: um único e-mail e senha desbloqueiam dezenas de serviços.

  #v(36pt)
  #grid(
    columns: (1fr, 1fr, 1fr, 1fr),
    column-gutter: 32pt,
    row-gutter: 24pt,
    align: center + horizon,
    image(ASSETS + "/gmail.svg", width: 130pt),
    image(ASSETS + "/google-drive.svg", width: 130pt),
    image(ASSETS + "/google-docs.svg", width: 130pt),
    image(ASSETS + "/google-meet.svg", width: 130pt),
    text(size: 26pt, fill: text-mute)[Gmail],
    text(size: 26pt, fill: text-mute)[Drive],
    text(size: 26pt, fill: text-mute)[Docs],
    text(size: 26pt, fill: text-mute)[Meet],
  )

  #v(36pt)
  #callout(kind: "warn", title: "Segurança")[
    Nunca compartilhe sua senha. Anote em local seguro e ative a *verificação em duas etapas* sempre que possível.
  ]
], step: 1, total: 5, course: CURSO, lecture: LECTURE)

#content-slide("Entrando na sua conta", [
  Siga o passo a passo no navegador (de preferência o *Google Chrome* #box(image(ASSETS + "/google-chrome.svg", height: 32pt))):

  #v(14pt)
  #step(1)[Abra o navegador e acesse #text(weight: "bold")[drive.google.com]]
  #v(8pt)
  #step(2)[Clique no botão *Fazer login* no canto superior direito]
  #v(8pt)
  #step(3)[Digite seu *e-mail* e clique em _Próxima_]
  #v(8pt)
  #step(4)[Digite sua *senha* e confirme]

  #v(14pt)
  #callout(kind: "tip", title: "Pronto!")[
    Você já está dentro do Google Drive. A próxima vez será automática se mantiver a sessão.
  ]
], step: 1, total: 5, course: CURSO, lecture: LECTURE)

// ==========================================
// PARTE 3 — A INTERFACE
// ==========================================
#section-slide("03", "A Interface do Drive", subtitle: "Conhecendo a tela inicial")

#content-slide("A Interface do Drive", [
  #grid(
    columns: (1.5fr, 1fr),
    column-gutter: 60pt,
    align: (left + horizon, center + horizon),
    [
      Áreas principais da tela inicial:

      - *Botão Novo* — canto superior esquerdo, abre o menu de criação e upload
      - *Menu lateral* — Meu Drive, Compartilhados comigo, Lixeira, Armazenamento
      - *Área central* — onde aparecem seus arquivos e pastas
      - *Barra de busca* — no topo, para localizar arquivos rapidamente
      - *Engrenagem* — configurações da sua conta e do Drive
    ],
    [
      #image(ASSETS + "/google-drive.svg", width: 280pt)
      #v(20pt)
      #text(size: 26pt, fill: text-mute, style: "italic")[
        Tudo organizado em pastas
      ]
    ],
  )
], step: 2, total: 5, course: CURSO, lecture: LECTURE)

// ==========================================
// PARTE 4 — UPLOAD
// ==========================================
#section-slide("04", "Como fazer Upload", subtitle: "Levando arquivos para a nuvem")

#content-slide("Como fazer Upload", [
  Existem *duas formas* simples de enviar um arquivo para o Drive:

  #v(28pt)
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 40pt,
    card(
      [Método 1 — Botão Novo],
      [
        + Clique em *Novo*
        + Escolha *Upload de arquivo*
        + Selecione o arquivo
        + Clique em _Abrir_
      ],
    ),
    card(
      [Método 2 — Arrastar e soltar],
      [
        + Abra a pasta no computador
        + Selecione o arquivo
        + *Arraste* até a janela do Drive
        + *Solte* na área central
      ],
    ),
  )

  #v(28pt)
  #callout(kind: "info", title: "Atenção")[
    Aguarde a *barra de progresso* terminar antes de fechar a aba — caso contrário o upload é interrompido.
  ]
], step: 3, total: 5, course: CURSO, lecture: LECTURE)

// ==========================================
// PARTE 5 — RECAP
// ==========================================
#section-slide("05", "Recapitulando", subtitle: "O que ficou da aula de hoje")

#content-slide("Recapitulando", [
  #grid(
    columns: (1.3fr, 1fr),
    column-gutter: 60pt,
    align: (left + horizon, center + horizon),
    [
      Hoje você aprendeu a:

      - Entender o que é o *Login Mestre*
      - *Acessar* o Google Drive
      - Reconhecer as áreas da *interface*
      - Realizar *upload* de arquivos

    ],
    image(ASSETS + "/google-drive.svg", width: 280pt),
  )
], step: 4, total: 5, course: CURSO, lecture: LECTURE)

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
      Dúvidas? Vamos conversar.
    ]
    #v(60pt)
    #block(width: 100pt, height: 6pt, fill: itt-wine)
    #v(28pt)
    #text(size: 26pt, font: sans-stack, fill: text-mute)[
      Instituto Tadao Takahashi · Unicamp
    ]
  ]
]
