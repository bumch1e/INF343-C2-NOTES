/// c2-notes.typ
//
// Archivo de flujo principal

#let MARGIN_LENGTH = 0.8cm
#let N_COLUMNS = 4
#let TEXT_SIZE = 9pt

#set page(
  flipped: true,
  columns: N_COLUMNS,
  margin: (x: MARGIN_LENGTH, y: MARGIN_LENGTH),
)

#set text(
  size: TEXT_SIZE,
)

#set par(
  spacing: 0.4em,
  leading: 0.65em,
  justify: true,
)

#include "/sections/chapter-4/ch4.typ"
#include "/sections/chapter-5/ch5.typ"
#include "/sections/chapter-6/ch6.typ"
#include "/sections/chapter-7/ch7.typ"
#include "/sections/chapter-8/ch8.typ"

