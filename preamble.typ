/// preamble.typ
//
// Archivo con utilidades

#let FORMULA_TEXT_SIZE = 7pt


/// Jerarquía de colores
#let TITLE_COLOR = purple.lighten(70%)
#let CONCEPT_COLOR = purple.lighten(80%)
#let DEFINITION_COLOR = purple.lighten(90%)

/// General

/// Función para destacar contenido en general
///
/// Retorna el contenido destacado
#let hl(color, content) = {
  box(
    inset: 0.2em,
    fill: color,
  )[#content]
}


/// Función para destacar contenido matemático
///
/// Retorna el contenido matemático destacado
#let hl_math(color, content) = {
  box(
    inset: 0.2em,
    fill: color,
  )[#content]
}

/// Capítulo 4

/// Estados globales y consistencia
#let cut_math = {
  context [
    #set text(size: FORMULA_TEXT_SIZE)

    $forall e,e' : (e,e' in E_(i)) and (e in C) and (e' arrow.r e) arrow.r.double e' in C$
  ]  
}

#let consistent_cut_math = {
  context [
    #set text(size: FORMULA_TEXT_SIZE)

    $forall e,e' in E : (e in C) and (e' arrow.r e) arrow.r.double e' in C$
  ]
}

#let stable_state_math = {
  context [
    #set text(size: FORMULA_TEXT_SIZE)

    $forall S,S' : PP(S) and (S arrow.r.wave^(*) S') arrow.r.double PP(S')$
  ]
}
