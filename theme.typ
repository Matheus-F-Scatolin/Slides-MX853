// ==========================================
// TEMA INSTITUTO TADAO TAKAHASHI (ITT) — UNICAMP
// Curso Básico de Serviços Google (MX853)
// ==========================================

// 1. Paleta de Cores — extraída do PDF base de capa
#let itt-wine    = rgb("#980000")  // vinho institucional
#let itt-wine-dk = rgb("#6E0000")  // vinho escuro p/ contraste
#let itt-wine-lt = rgb("#F5E6E6")  // vinho lavado p/ caixas
#let unicamp-bk  = rgb("#000000")  // preto Unicamp
#let text-dark   = rgb("#1A1A1A")
#let text-mute   = rgb("#595959")
#let bg-paper    = rgb("#FFFFFF")
#let bg-cream    = rgb("#FAF7F4")  // off-white discreto
#let rule-soft   = rgb("#E5E0DD")

// Cores acessórias (Google Workspace) — uso pontual em ícones/logo
#let g-blue   = rgb("#4285F4")
#let g-red    = rgb("#EA4335")
#let g-yellow = rgb("#FBBC05")
#let g-green  = rgb("#34A853")

// 2. Tipografia base
#let serif-stack = ("Libertinus Serif", "New Computer Modern", "Times New Roman", "Times")
#let sans-stack  = ("Avenir Next", "Helvetica Neue", "Helvetica", "Arial")

// 3. Configuração do documento (16:9)
#let setup-presentation(doc) = {
  set document(title: "Aula 00 — Introdução e Google Drive", author: "ITT / Unicamp")
  set page(
    width: 1920pt,
    height: 1080pt,
    margin: (x: 110pt, y: 90pt),
    fill: bg-paper,
  )
  set text(font: serif-stack, size: 36pt, fill: text-dark, lang: "pt", region: "BR")
  set par(leading: 14pt, justify: false)
  show heading: set text(font: serif-stack, weight: "bold")
  show link: set text(fill: itt-wine)
  doc
}

// 4. Helpers visuais ----------------------------------------------------------

// Faixa lateral vinho usada em slides de seção / capa institucional
#let _wine-sidebar(width: 28%) = place(
  top + left,
  rect(width: width, height: 100%, fill: itt-wine, stroke: none),
)

// Footer institucional reutilizável
#let _course-footer(course, lecture) = {
  set text(font: sans-stack, size: 18pt, fill: text-mute)
  grid(
    columns: (1fr, auto),
    align(left)[
      #smallcaps(course) #h(12pt) #text(fill: rule-soft)[•] #h(12pt) #lecture
    ],
    align(right)[Instituto Tadao Takahashi · Unicamp],
  )
}

// Cabeçalho de slide de conteúdo (título + filete vinho + dot progress)
#let _content-header(title, step: none, total: none) = {
  block(width: 100%)[
    #grid(
      columns: (1fr, auto),
      align: (left + bottom, right + bottom),
      column-gutter: 30pt,
      [
        #text(size: 56pt, weight: "bold", fill: itt-wine)[#title]
      ],
      if step != none and total != none {
        let dots = ()
        for i in range(total) {
          dots.push(
            circle(
              radius: 7pt,
              fill: if i < step { itt-wine } else { rule-soft },
              stroke: none,
            )
          )
        }
        stack(dir: ltr, spacing: 10pt, ..dots)
      } else { [] },
    )
    #v(8pt)
    #line(length: 100%, stroke: 4pt + itt-wine)
    #v(4pt)
    #line(length: 18%, stroke: 4pt + unicamp-bk)
  ]
}

// 5. Slide 3 (briefing original) — Título da Aula -----------------------------
#let title-slide(course, class-num, title) = {
  page(fill: bg-paper, margin: 0pt)[
    #_wine-sidebar(width: 32%)
    // Bloco de texto à direita
    #place(
      left + horizon,
      dx: 38%,
      dy: 0pt,
      block(width: 58%)[
        #set text(fill: text-dark)
        #text(size: 36pt, font: sans-stack, fill: text-mute, weight: "regular")[
          #smallcaps(course)
        ]
        #v(12pt)
        #text(size: 110pt, weight: "bold", fill: unicamp-bk)[#class-num]
        #v(8pt)
        #block(width: 12%, height: 6pt, fill: itt-wine)
        #v(28pt)
        #text(size: 64pt, weight: "bold", fill: itt-wine-dk)[#title]
        #v(40pt)
        #text(size: 26pt, font: sans-stack, fill: text-mute)[
          Instituto Tadao Takahashi · Unicamp
        ]
      ],
    )
  ]
}

// 6. Slide padrão de conteúdo -------------------------------------------------
// Uso simples (compatível com briefing): #content-slide("Título", [conteúdo])
// Uso avançado: #content-slide("Título", [...], step: 2, total: 6, course: "...", lecture: "...")
#let content-slide(
  title,
  body,
  step: none,
  total: none,
  course: "Curso Básico",
  lecture: "Aula 00 — Introdução e Google Drive",
) = {
  page(
    fill: bg-paper,
    margin: (x: 110pt, top: 90pt, bottom: 90pt),
    footer: _course-footer(course, lecture),
  )[
    #set text(size: 36pt, fill: text-dark)
    #set par(leading: 16pt)
    #set list(
      indent: 8pt,
      body-indent: 14pt,
      spacing: 22pt,
      marker: ([#text(fill: itt-wine, weight: "bold")[▸]], [#text(fill: text-mute)[•]]),
    )
    #set enum(
      indent: 8pt,
      body-indent: 14pt,
      spacing: 22pt,
      numbering: n => text(fill: itt-wine, weight: "bold")[#n.],
    )
    #show strong: set text(fill: itt-wine-dk)
    #_content-header(title, step: step, total: total)
    #v(40pt)
    #body
  ]
}

// 7. Slide de divisor de seção -----------------------------------------------
#let section-slide(number, title, subtitle: none) = {
  page(fill: bg-paper, margin: 0pt)[
    #_wine-sidebar(width: 22%)
    #place(
      left + horizon,
      dx: 30%,
      block(width: 65%)[
        #text(size: 28pt, font: sans-stack, fill: text-mute, weight: "regular")[
          #smallcaps([Seção #number])
        ]
        #v(20pt)
        #text(size: 92pt, weight: "bold", fill: itt-wine-dk)[#title]
        #if subtitle != none {
          v(20pt)
          text(size: 32pt, fill: text-mute, style: "italic")[#subtitle]
        }
      ],
    )
  ]
}

// 8. Slide de sumário (Contents) ---------------------------------------------
#let contents-slide(items, course: "Curso Básico", lecture: "Aula 00 — Introdução e Google Drive") = {
  page(
    fill: bg-paper,
    margin: (x: 130pt, top: 110pt, bottom: 80pt),
    footer: _course-footer(course, lecture),
  )[
    #text(size: 76pt, weight: "bold", fill: itt-wine)[Sumário]
    #v(6pt)
    #line(length: 100%, stroke: 4pt + itt-wine)
    #line(length: 22%, stroke: 4pt + unicamp-bk)
    #v(50pt)
    #set text(size: 36pt)
    #for (i, it) in items.enumerate() {
      block(below: 28pt)[
        #grid(
          columns: (60pt, 1fr, auto),
          align: (left + horizon, left + horizon, right + horizon),
          column-gutter: 20pt,
          text(fill: itt-wine, weight: "bold")[#(i+1).],
          text(fill: text-dark)[#it],
          text(fill: text-mute, size: 26pt)[#(i+3)],
        )
        #v(6pt)
        #line(length: 100%, stroke: 1pt + rule-soft)
      ]
    }
  ]
}

// 9. Componentes auxiliares de conteúdo --------------------------------------

// Caixa de destaque (callout) — variantes: "info", "warn", "tip"
#let callout(title: none, kind: "tip", body) = {
  let (accent, bg) = if kind == "warn" {
    (itt-wine, itt-wine-lt)
  } else if kind == "info" {
    (unicamp-bk, bg-cream)
  } else {
    (itt-wine-dk, itt-wine-lt)
  }
  block(
    width: 100%,
    fill: bg,
    stroke: (left: 8pt + accent),
    inset: (left: 28pt, rest: 24pt),
    radius: (right: 6pt),
  )[
    #if title != none {
      text(size: 28pt, weight: "bold", fill: accent, font: sans-stack)[#upper(title)]
      v(8pt)
    }
    #set text(size: 32pt, fill: text-dark)
    #body
  ]
}

// Cartão simples (uso em grid de tópicos)
#let card(title, body, accent: itt-wine) = block(
  width: 100%,
  fill: bg-cream,
  stroke: 1pt + rule-soft,
  inset: 28pt,
  radius: 8pt,
)[
  #block(width: 60pt, height: 6pt, fill: accent)
  #v(14pt)
  #text(size: 32pt, weight: "bold", fill: text-dark)[#title]
  #v(12pt)
  #set text(size: 28pt, fill: text-mute)
  #body
]

// Passo numerado (uso em tutoriais)
#let step(n, body) = grid(
  columns: (76pt, 1fr),
  column-gutter: 22pt,
  align: (center + horizon, left + top),
  circle(
    radius: 28pt,
    fill: itt-wine,
    stroke: none,
  )[
    #align(center + horizon)[
      #text(size: 28pt, weight: "bold", fill: bg-paper)[#n]
    ]
  ],
  block(inset: (top: 14pt))[
    #set text(size: 32pt, fill: text-dark)
    #body
  ],
)
