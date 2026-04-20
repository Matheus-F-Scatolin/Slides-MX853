// ==========================================
// AULA 04 — MESTRE DO TEMPO (GOOGLE AGENDA)
// Curso Básico de Serviços Google · ITT/Unicamp
// ==========================================

#import "../../theme.typ": *

#show: setup-presentation

#let CURSO   = "Curso Básico de Serviços Google"
#let LECTURE = "Aula 04 — Mestre do Tempo (Google Agenda)"

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
#title-slide("Curso Básico", "Aula 04", "Mestre do Tempo (Google Agenda)")

// ------------------------------------------
// SLIDE 4 — SUMÁRIO
// ------------------------------------------
#contents-slide(
  (
    [Seu Assistente Pessoal],
    [Eventos vs. Tarefas],
    [O Poder do Lembrete],
    [Organização por Cores],
  ),
  course: CURSO,
  lecture: LECTURE,
)

// ==========================================
// PARTE 1 — SEU ASSISTENTE PESSOAL
// ==========================================
#section-slide("01", "Seu Assistente Pessoal", subtitle: "O fim do \"eu esqueci\"")

#content-slide("Fim do \"Eu Esqueci\"", [
  #grid(
    columns: (1.4fr, 1fr),
    column-gutter: 60pt,
    align: (left + horizon, center + horizon),
    [
      A Google Agenda é a *memória externa* da sua rotina:

      - Acessa pelo *navegador* (calendar.google.com) ou pelo *celular*.
      - Sincroniza *na hora* entre todos os seus aparelhos.
      - Guarda *prova, aula, consulta médica, aniversário* — tudo num lugar só.
      - Te avisa *antes* da hora: chega de descobrir a prova só na sala.

      #v(20pt)
      #callout(kind: "tip", title: "Pronto!")[
        Anotou um compromisso pelo celular? Ele aparece *automaticamente* no computador. Sem precisar copiar nada.
      ]
    ],
    [
      #image(ASSETS + "/google-calendar.svg", width: 320pt)
      #v(20pt)
      #text(size: 26pt, fill: text-mute, style: "italic")[
        Google Agenda
      ]
    ],
  )
], step: 0, total: 4, course: CURSO, lecture: LECTURE)

// ==========================================
// PARTE 2 — EVENTOS VS. TAREFAS
// ==========================================
#section-slide("02", "Eventos vs. Tarefas", subtitle: "Compromisso fixo ou lista de afazeres?")

#content-slide("Eventos vs. Tarefas", [
  São *dois jeitos diferentes* de anotar — escolher o certo deixa sua agenda muito mais útil.

  #v(28pt)
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 36pt,
    row-gutter: 28pt,
    card(
      [Evento],
      [Tem *hora marcada*. Ex: aula de matemática às *10h*, consulta às *14h30*. Aparece como *bloco colorido* no calendário.],
    ),
    card(
      [Tarefa],
      [Algo *para fazer* num dia — sem hora fixa. Ex: estudar para a prova, entregar trabalho. Aparece como *checkbox* no topo do dia.],
    ),
    card(
      [Quando usar Evento],
      [Sempre que houver *outra pessoa envolvida* ou *local físico*: aulas, reuniões, médico, encontros.],
    ),
    card(
      [Quando usar Tarefa],
      [Para o *seu próprio compromisso interno*: ler um capítulo, revisar caderno, fazer exercícios. Marque como *concluída* ao terminar.],
    ),
  )
], step: 1, total: 4, course: CURSO, lecture: LECTURE)

// ==========================================
// PARTE 3 — O PODER DO LEMBRETE
// ==========================================
#section-slide("03", "O Poder do Lembrete", subtitle: "Notificações que avisam antes da hora")

#content-slide("Configurando Notificações", [
  Todo evento pode ter *um ou mais lembretes* — basta avisar o app *quando* tocar:

  #v(24pt)
  #step(1)[Abra o evento e clique em *Adicionar notificação*.]
  #v(12pt)
  #step(2)[Escolha *quantos minutos, horas ou dias antes* você quer ser avisado (ex: *30 min* antes da prova).]
  #v(12pt)
  #step(3)[Adicione *vários lembretes*: um *1 dia antes* para estudar, outro *30 min antes* para sair de casa.]

  #v(24pt)
  #callout(kind: "info", title: "Combo poderoso")[
    *1 dia antes:* lembre de estudar. *1 hora antes:* lembre de separar o material. *15 min antes:* lembre de sair. Três alarmes, zero esquecimento.
  ]
], step: 2, total: 4, course: CURSO, lecture: LECTURE)

// ==========================================
// PARTE 4 — CORES
// ==========================================
#section-slide("04", "Organização por Cores", subtitle: "Color coding para bater o olho e entender")

#content-slide("Separando por Cores", [
  Cada evento pode ganhar uma *cor diferente* — assim você *bate o olho* e já sabe do que se trata, sem precisar ler.

  #v(20pt)
  - Crie um padrão *só seu*: ex. *azul* para aulas, *vermelho* para provas, *verde* para vida pessoal, *amarelo* para trabalho.
  - Para mudar: clique no evento, depois no *círculo colorido* e escolha a cor.
  - Eventos *recorrentes* (aulas semanais) herdam a cor — configure *uma vez* só.
  - Cada *agenda* (Pessoal, Aniversários, Feriados) também tem sua cor própria, no menu lateral *"Minhas agendas"*.

  #v(20pt)
  #callout(kind: "warn", title: "Mantenha o padrão")[
    Cor só funciona se for *consistente*. Defina o seu código no começo do mês e *não mude no meio* — senão vira bagunça visual.
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
      Bora virar o mestre do seu tempo?
    ]
    #v(60pt)
    #block(width: 100pt, height: 6pt, fill: itt-wine)
    #v(28pt)
    #text(size: 26pt, font: sans-stack, fill: text-mute)[
      Instituto Tadao Takahashi · Unicamp
    ]
  ]
]
