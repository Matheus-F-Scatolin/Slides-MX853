// Apresentação Final MX853 — Módulo 09 (referência do padrão modulo-XX)
#import "../../theme.typ": *

#show: setup-presentation

#let CURSO   = "MX853 — Conceitos Básicos no Uso do Computador"
#let LECTURE = "Módulo 09 — Serviços Gratuitos do Google"
#let ASSETS  = "assets"

#let aula-slide(titulo, screenshot, logo, body) = {
  content-slide(titulo, [
    #grid(
      columns: (1fr, auto),
      column-gutter: 48pt,
      align: (left + top, right + top),
      body,
      image(ASSETS + "/" + logo, width: 120pt),
    )
    #v(14pt)
    #align(center)[
      #image(ASSETS + "/" + screenshot, height: 340pt)
    ]
  ], course: CURSO, lecture: LECTURE)
}

#title-slide("MX853", "Módulo 09", "Serviços Gratuitos do Google")

#content-slide("Contexto e objetivo", [
  #grid(
    columns: (1.2fr, 1fr),
    column-gutter: 48pt,
    align: (left + top, center + horizon),
    [
      #text(size: 32pt, weight: "bold", fill: itt-wine-dk)[No curso MX853]
      #v(12pt)
      - Aplicativos Google: editores, e-mail, agenda e reuniões online
      - Google Drive para guardar e organizar arquivos
      #v(24pt)
      #text(size: 32pt, weight: "bold", fill: itt-wine-dk)[Objetivo do módulo]
      #v(12pt)
      - 6 aulas em sequência, cerca de *110 minutos* no total
      - Cada aula: leitura, vídeo, desafio prático e quiz
      - Ao concluir: pasta no Drive com os exercícios das seis aulas
    ],
    [
      #grid(
        columns: (1fr, 1fr, 1fr),
        column-gutter: 20pt,
        row-gutter: 20pt,
        align: center + horizon,
        image(ASSETS + "/gmail.svg", width: 88pt),
        image(ASSETS + "/google-drive.svg", width: 88pt),
        image(ASSETS + "/google-docs.svg", width: 88pt),
        image(ASSETS + "/google-sheets.svg", width: 88pt),
        image(ASSETS + "/google-calendar.svg", width: 88pt),
        image(ASSETS + "/google-meet.svg", width: 88pt),
      )
    ],
  )
], course: CURSO, lecture: LECTURE)

#content-slide("Mapa das aulas", [
  #grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 24pt,
    row-gutter: 20pt,
    card([Aula 00 · 15 min], [Introdução e Drive]),
    card([Aula 01 · 20 min], [Gmail]),
    card([Aula 02 · 20 min], [Google Docs]),
    card([Aula 03 · 23 min], [Google Planilhas]),
    card([Aula 04 · 17 min], [Google Agenda]),
    card([Aula 05 · 15 min], [Google Meet]),
  )
], course: CURSO, lecture: LECTURE)

#content-slide("Formato de cada aula", [
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 32pt,
    row-gutter: 20pt,
    card([Guia PDF], [Resumo dos conceitos (3–4 min de leitura)]),
    card([Vídeo], [Demonstração na tela (5–10 min)]),
    card([Desafio prático], [Tarefa no próprio computador (5–10 min)]),
    card([Quiz], [Google Forms (2–3 min)]),
  )
], course: CURSO, lecture: LECTURE)

#section-slide("02", "Aulas", subtitle: "Conteúdo de cada unidade")

#aula-slide("Aula 00: Introdução e Drive", "aula_0.png", "google-drive.svg", [
  - Fazer login na conta Google
  - Navegar na interface do Drive (Meu Drive, botão Novo)
  - Enviar arquivo para a nuvem (upload)
  - Criar pasta *Curso Digital — [nome]* com subpasta *Aulas*
])

#aula-slide("Aula 01: Gmail", "aula_1.png", "gmail.svg", [
  - Escrever e enviar e-mail com assunto preenchido
  - Entender abas da caixa de entrada (Principal, Social, Promoções)
  - Anexar arquivo do Drive
  - Desconfiar de links e pedidos de dados em mensagens desconhecidas
])

#aula-slide("Aula 02: Google Docs", "aula_2.png", "google-docs.svg", [
  - Criar documento e nomear o arquivo
  - Formatar texto (negrito, tamanho, alinhamento)
  - Compartilhar com permissão de leitor ou editor
  - Recuperar versão anterior pelo histórico de versões
])

#aula-slide("Aula 03: Google Planilhas", "aula_3.png", "google-sheets.svg", [
  - Identificar linhas, colunas e células
  - Iniciar cálculo com o sinal *=*
  - Usar a fórmula *`=SOMA(intervalo)`* para somar valores
  - Formatar coluna de valores (ex.: moeda)
])

#aula-slide("Aula 04: Google Agenda", "aula_4.png", "google-calendar.svg", [
  - Alternar visualização (dia, semana, mês)
  - Criar evento com horário e título
  - Configurar lembrete antes do evento
  - Criar tarefa com prazo; usar cores para separar tipos de compromisso
])

#aula-slide("Aula 05: Google Meet", "aula_5.png", "google-meet.svg", [
  - Entrar em reunião pelo link (câmera e microfone)
  - Manter microfone desligado quando não estiver falando
  - Compartilhar tela para mostrar um documento
  - Aplicar desfoque no fundo da câmera
])

#content-slide("Vídeo: Aula 03 — Google Planilhas", [
  #align(center)[
    #box(
      width: 720pt,
      height: 405pt,
      clip: true,
      radius: 6pt,
      fill: rgb("#1A1A1A"),
      stroke: 1pt + rule-soft,
    )[
      #image(ASSETS + "/aula_3.png", width: 100%, height: 100%, fit: "cover")
    ]
    #v(12pt)
    #text(size: 26pt, fill: text-mute)[Reproduzir vídeo da aula na apresentação]
  ]
], course: CURSO, lecture: LECTURE)

#content-slide("Entrega ao concluir o módulo", [
  O aluno deve ter no Drive, na pasta do curso:
  - Pasta *Aulas* com arquivo enviado (Aula 00)
  - E-mail enviado com anexo (Aula 01)
  - Documento *Meus Objetivos* compartilhado (Aula 02)
  - Planilha *Meus Gastos* com fórmula de soma (Aula 03)
  - Evento e tarefa na Agenda (Aula 04)
  - Reunião Meet testada com compartilhamento de tela (Aula 05)
], course: CURSO, lecture: LECTURE)
