// ==========================================
// AULA 01 — COMUNICAÇÃO E SUA IDENTIDADE (GMAIL)
// Curso Básico de Serviços Google · ITT/Unicamp
// ==========================================

#import "../../theme.typ": *

#show: setup-presentation

#let CURSO   = "Curso Básico de Serviços Google"
#let LECTURE = "Aula 01 — Comunicação e Sua Identidade (Gmail)"

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
#title-slide("Curso Básico", "Aula 01", "Comunicação e Sua Identidade (Gmail)")

// ------------------------------------------
// SLIDE 4 — SUMÁRIO
// ------------------------------------------
#contents-slide(
  (
    [Endereço Profissional],
    [A Estrutura da Mensagem],
    [Enviando Anexos],
    [Caixa de Entrada Zero],
  ),
  course: CURSO,
  lecture: LECTURE,
)

// ==========================================
// PARTE 1 — SUA IDENTIDADE DIGITAL
// ==========================================
#section-slide("01", "Sua Identidade Digital", subtitle: "O e-mail como o seu RG na internet")

#content-slide("O Endereço Profissional", [
  #grid(
    columns: (1.4fr, 1fr),
    column-gutter: 60pt,
    align: (left + horizon, center + horizon),
    [
      - O e-mail é o seu *"RG digital"* na internet.
      - É o canal *oficial* para escolas, faculdades e empresas.
      - A *regra de ouro*: use seu nome e sobrenome
        (ex: #text(font: sans-stack)[joao.silva\@gmail.com]).

      #v(24pt)
      #callout(kind: "warn", title: "Atenção")[
        Evite *apelidos ou nomes infantis* (ex: #text(font: sans-stack)[gatinha123\@] ou #text(font: sans-stack)[dark_ninja\@]).
        No mercado de trabalho, a *primeira impressão* é a que fica!
      ]
    ],
    [
      #image(ASSETS + "/gmail.svg", width: 320pt)
      #v(20pt)
      #text(size: 26pt, fill: text-mute, style: "italic")[
        Gmail · sua identidade
      ]
    ],
  )
], step: 0, total: 4, course: CURSO, lecture: LECTURE)

// ==========================================
// PARTE 2 — A ESTRUTURA DA MENSAGEM
// ==========================================
#section-slide("02", "A Estrutura da Mensagem", subtitle: "Para, CC, CCO e Assunto")

#content-slide("A Estrutura da Mensagem", [
  Cada campo do Gmail tem uma *função específica* — usá-los bem é o que separa um e-mail amador de um profissional.

  #v(28pt)
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 36pt,
    row-gutter: 28pt,
    card(
      [Para],
      [O *destinatário principal* da sua mensagem — quem precisa ler e, em geral, responder.],
    ),
    card(
      [CC (Cópia)],
      [Pessoas que precisam *ler* o e-mail, mas *não* precisam responder.],
    ),
    card(
      [CCO (Cópia Oculta)],
      [Protege a *privacidade*. Ninguém vê quem mais recebeu o e-mail.],
    ),
    card(
      [Assunto],
      [A *"manchete"* do e-mail. Seja claro e direto. *Nunca* deixe em branco!],
    ),
  )
], step: 1, total: 4, course: CURSO, lecture: LECTURE)

// ==========================================
// PARTE 3 — ENVIANDO ANEXOS
// ==========================================
#section-slide("03", "Enviando Anexos", subtitle: "Mande seus trabalhos com segurança")

#content-slide("Enviando Trabalhos (Anexos)", [
  Anexar um arquivo no Gmail é simples — basta seguir três passos #box(image(ASSETS + "/attachment.svg", height: 36pt)):

  #v(28pt)
  #step(1)[Clique no ícone de *"clipe de papel"* na parte inferior da mensagem.]
  #v(14pt)
  #step(2)[Escolha o arquivo do seu *Computador* ou diretamente do *Google Drive*.]
  #v(14pt)
  #step(3)[Aguarde a *barra de carregamento* encher antes de clicar em *"Enviar"*.]

  #v(28pt)
  #callout(kind: "tip", title: "Dica de ouro")[
    Se a barra ainda estiver carregando, o anexo *não foi enviado*. Espere terminar — vale o tempinho extra.
  ]
], step: 2, total: 4, course: CURSO, lecture: LECTURE)

// ==========================================
// PARTE 4 — CAIXA DE ENTRADA ZERO
// ==========================================
#section-slide("04", "Caixa de Entrada Zero", subtitle: "Organizando sua rotina digital")

#content-slide("Caixa de Entrada Zero", [
  Manter a caixa de entrada *organizada* é um hábito profissional. Use estas três ações no seu dia a dia:

  #v(20pt)
  - *Ler e Responder:* não deixe e-mails acumularem teias de aranha.
  - *Arquivar:* tira o e-mail da tela principal, mas ele *não é apagado* — fica guardado para consultas futuras.
  - *Estrela (Favoritar):* marca e-mails *super importantes* (ex: comprovante do ENEM) para achar rápido depois.

  #v(28pt)
  #callout(kind: "info", title: "Hábito do dia")[
    Reserve *5 minutos* pela manhã para triar a caixa: responder, arquivar ou estrelar. Sua semana fica muito mais leve.
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
      Bora mandar aquele e-mail profissional?
    ]
    #v(60pt)
    #block(width: 100pt, height: 6pt, fill: itt-wine)
    #v(28pt)
    #text(size: 26pt, font: sans-stack, fill: text-mute)[
      Instituto Tadao Takahashi · Unicamp
    ]
  ]
]
