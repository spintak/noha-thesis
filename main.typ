#import "@preview/glossarium:0.5.10": make-glossary, register-glossary
#import "template.typ": *
#import "glossary.typ": entry-list

// ─── Document setup ──────────────────────────────────────────────────────────
#show: setup-page
#show: make-glossary
#register-glossary(entry-list)

// ─── Title Page (no page number) ─────────────────────────────────────────────
#title-page(
  title: [Epistemological Disenfranchisement in the Humanitarian Sector],
  subtitle: [How Global North Metrics Marginalize Indigenous Knowledge Management],
  author: "Shantara Lauren Dyah Pintak",
  student-number: "24297432",
  supervisor: "Dr. Sulagna Maitra",
  supervisor-affiliation: "University College Dublin",
  month-year: "May 2026",
)

// ─── Frontmatter — roman numerals ────────────────────────────────────────────

// Epigraph verso of title page (not numbered)
#page(numbering: none)[
  #v(1fr)
  #align(center)[
    #block(width: 70%)[
      #set text(style: "italic")
      "Perhaps the most important task of all would be to undertake studies in contemporary alternatives to Orientalism, to ask how one can study other cultures and peoples from a libertarian, or a nonrepressive and nonmanipulative, perspective. But then one would have to rethink the whole complex problem of knowledge and power."

      #v(1em)
      #align(right)[— Dr. Edward W. Said @said1978orientalism[p. 35]]
    ]
  ]
  #v(2fr)
]

#set page(numbering: "i", number-align: right)
#counter(page).update(1)

#include "frontmatter/abstract.typ"

#pagebreak()

// Dedication (self-contained page with its own layout)
#include "frontmatter/dedication.typ"

// Blank verso after dedication — left empty by convention
#page(numbering: none)[]

#include "frontmatter/acknowledgements.typ"

#pagebreak()

#outline(
  title: [Table of Contents],
  depth: 3,
  indent: auto,
)

#pagebreak()

#heading(level: 1, numbering: none, outlined: true)[List of Figures]
#outline(title: none, target: figure.where(kind: image))

#heading(level: 1, numbering: none, outlined: true)[List of Tables]
#outline(title: none, target: figure.where(kind: table))

#pagebreak()

#include "frontmatter/abbreviations.typ"

#pagebreak()

#include "frontmatter/concepts.typ"

// ─── Chapters — arabic numerals ──────────────────────────────────────────────
#pagebreak()
#set page(numbering: "1", number-align: right)
#counter(page).update(1)

#include "chapters/01_introduction.typ"
#include "chapters/03_empirical.typ"
#include "chapters/02_theory.typ"
#include "chapters/04_discussion.typ"
#include "chapters/05_conclusions.typ"
// #include "chapters/examples.typ"

// ─── Bibliography ─────────────────────────────────────────────────────────────
#bibliography("references.bib", style: "harvard-cite-them-right", title: "Bibliography")

// ─── Appendices ───────────────────────────────────────────────────────────────
#set heading(numbering: "A.1.1")
#counter(heading).update(0)

#include "appendices/appendix-a.typ"
#include "appendices/appendix-b.typ"
#include "appendices/appendix-c.typ"
#include "appendices/appendix-d.typ"