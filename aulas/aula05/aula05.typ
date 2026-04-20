// ==========================================
// AULA 05 — CONEXÃO (GOOGLE MEET)
// Curso Básico de Serviços Google · ITT/Unicamp
// ==========================================

#import "../../theme.typ": *

#show: setup-presentation

#let CURSO   = "Curso Básico de Serviços Google"
#let LECTURE = "Aula 05 — Conexão (Google Meet)"

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
#title-slide("Curso Básico", "Aula 05", "Conexão (Google Meet)")

// ------------------------------------------
// SLIDE 4 — SUMÁRIO
// ------------------------------------------
#contents-slide(
  (
    [A Sala de Espera],
    [Etiqueta Digital],
    [Apresentando Trabalhos],
    [Fundo Desfocado],
  ),
  course: CURSO,
  lecture: LECTURE,
)

// ==========================================
// PARTE 1 — A SALA DE ESPERA
// ==========================================
#section-slide("01", "A Sala de Espera", subtitle: "Teste tudo antes de entrar na reunião")

#content-slide("A Sala de Espera", [
  #grid(
    columns: (1.4fr, 1fr),
    column-gutter: 60pt,
    align: (left + horizon, center + horizon),
    [
      Antes de clicar em *Participar*, o Meet abre uma *tela de pré-visualização*. Use ela:

      - Veja sua *imagem da câmera* — está enquadrado? A luz está boa?
      - Fale uma frase teste e olhe a *barra do microfone* mexer.
      - Confirme se está com o *fone certo* ligado (clique no ícone de *engrenagem*).
      - Tudo ok? Aí sim clique em *Participar agora*.

      #v(20pt)
      #callout(kind: "tip", title: "Pronto!")[
        Entrar com áudio testado evita o clássico *"professor, não tô te ouvindo"* nos primeiros 5 minutos da aula.
      ]
    ],
    [
      #image(ASSETS + "/google-meet.svg", width: 320pt)
      #v(20pt)
      #text(size: 26pt, fill: text-mute, style: "italic")[
        Google Meet
      ]
    ],
  )
], step: 0, total: 4, course: CURSO, lecture: LECTURE)

// ==========================================
// PARTE 2 — ETIQUETA DIGITAL
// ==========================================
#section-slide("02", "Etiqueta Digital", subtitle: "Comportamento que faz diferença na chamada")

#content-slide("Etiqueta Digital", [
  Reunião online tem *regras de convivência* — quem segue, é levado a sério.

  #v(28pt)
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 36pt,
    row-gutter: 28pt,
    card(
      [Microfone mudo],
      [Mantenha o *mic desligado* sempre que não estiver falando. Cachorro latindo, ventilador, vizinho — tudo entra na chamada.],
    ),
    card(
      [Pedir a palavra],
      [Use o botão *Levantar a mão* (ícone de mãozinha) em vez de cortar quem está falando.],
    ),
    card(
      [Chat para perguntas],
      [Dúvida rápida? Mande no *chat* sem interromper. O professor responde quando puder.],
    ),
    card(
      [Atrasou? Sem alarde],
      [Entre *com o microfone mudo*, sem dar oi alto. Mande oi pelo chat para não atrapalhar.],
    ),
  )
], step: 1, total: 4, course: CURSO, lecture: LECTURE)

// ==========================================
// PARTE 3 — APRESENTANDO
// ==========================================
#section-slide("03", "Apresentando Trabalhos", subtitle: "Compartilhar tela com confiança")

#content-slide("Compartilhar Tela / Apresentar Agora", [
  Para mostrar slides, planilha ou um site para a turma:

  #v(24pt)
  #step(1)[Na barra inferior do Meet, clique em *Apresentar agora* (ícone de *seta para cima*).]
  #v(12pt)
  #step(2)[Escolha *uma guia* (recomendado), *uma janela* ou *a tela inteira*.]
  #v(12pt)
  #step(3)[Selecione o que quer mostrar e clique em *Compartilhar*. Para encerrar: *Parar de compartilhar*.]

  #v(24pt)
  #callout(kind: "info", title: "Dica de pro")[
    Prefira *Uma guia* para apresentar slides — fica *só o conteúdo* na tela, sem mostrar e-mails ou notificações que aparecerem no resto do computador.
  ]
], step: 2, total: 4, course: CURSO, lecture: LECTURE)

// ==========================================
// PARTE 4 — FUNDO DESFOCADO
// ==========================================
#section-slide("04", "Fundo Desfocado", subtitle: "Sua câmera ligada, seu quarto preservado")

#content-slide("Fundo Desfocado e Câmera Ligada", [
  Não dá mais para usar *"meu quarto está bagunçado"* como desculpa: o Meet *desfoca o fundo* para você.

  #v(20pt)
  - Antes de entrar (ou no meio da chamada), clique no ícone de *três pontos*.
  - Escolha *Aplicar efeitos visuais → Desfocar fundo*.
  - Existem dois níveis: *desfoque leve* e *desfoque total* — teste qual fica melhor.
  - Também dá para escolher uma *imagem de fundo* pronta (sala, biblioteca, paisagem).
  - Ligar a câmera mostra *atenção e respeito* a quem está apresentando.

  #v(20pt)
  #callout(kind: "warn", title: "Atenção à luz")[
    Desfoque ajuda no fundo, mas não corrige *contraluz*. Sente de frente para a *janela ou luminária* — nunca de costas — para o rosto aparecer bem.
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
      Câmera ligada, microfone mudo, bora!
    ]
    #v(60pt)
    #block(width: 100pt, height: 6pt, fill: itt-wine)
    #v(28pt)
    #text(size: 26pt, font: sans-stack, fill: text-mute)[
      Instituto Tadao Takahashi · Unicamp
    ]
  ]
]
