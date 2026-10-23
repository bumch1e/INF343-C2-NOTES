/// global_states.typ
//
// Archivo con lo referente a estados globales y consistencia

#import "/preamble.typ": *

#let consistent_example_img_path = "/assets/consistent_example.png"
#let cl_cut_example_img_path = "/assets/cl_cut_example.png"
#let cl_pseudocode_img_path = "/assets/cl_pseudocode.png"
#let stable_example_img_path = "/assets/stable_example.png"
#let global_state_changes_img_path = "/assets/global_state_changes.png"

#let cut_concept = hl(CONCEPT_COLOR)[*Corte*]
#let cut_definition = hl_math(DEFINITION_COLOR)[*#cut_math*]

#let global_state_concept = hl(CONCEPT_COLOR)[*Estado global*]
#let global_state_definition = {
  hl_math(DEFINITION_COLOR)[
    *$S = \{s_(1),s_(2),dots,s_(n)\}$ donde cada efecto de un evento $e_(i) in C$
    se ve reflejado en el estado $s_(i)$*.
  ]
}

#let consistent_cut_concept = hl(CONCEPT_COLOR)[*Corte consistente*]
#let consistent_cut_definition = hl_math(DEFINITION_COLOR)[*#consistent_cut_math*]

#let consistent_global_state_concept = hl(CONCEPT_COLOR)[*Estado global consistente*]
#let consistent_global_state_definition = {
  [
    Estado global $S$ es consistente ssi $S$ está asociado a un corte consistente.

    *Aplicaciones*: Tolerancia a fallos y recuperación, _checkpointing_, monitoreo
    y _debugging_.
  ]
}


#let stable_state_concept = hl(CONCEPT_COLOR)[*Estado estable*]

#let cl_objective = {
  [
    Registrar un estado global consistente en un modelo asincrónico y sin fallas sin
    detener la ejecución de la computación en curso.
  ]
}

#let cl_assumptions = {
  [
    - Paso de mensajes unidireccional (*_FIFO_*).
    - Topología conocida (*_GDC_*).
    - Alguien comienza el algoritmo.
    - Cada proceso puede registrar su estado local.
    - Capa proceso puede registrar el estado de *TODOS* sus canales de entrada
    - Los estados de *TODOS* los procesos y canales pueden ser recuperados para
      obtener el estado global del sistema.
  ]
}



== Estado global y consistencia

/// Definiciones
==== #hl(TITLE_COLOR)[Definiciones]

===== *#cut_concept*
#align(center)[#cut_definition]

===== #global_state_concept

#global_state_definition

===== *#consistent_cut_concept*
#align(center)[#consistent_cut_definition]

===== #consistent_global_state_concept

#consistent_global_state_definition

===== #hl(TITLE_COLOR)[Ejemplo de consistencia]
#image(consistent_example_img_path)

===== #stable_state_concept
#align(center)[*#stable_state_math*]

#image(stable_example_img_path)

/// Algoritmo de Chandy-Lamport
==== #hl(TITLE_COLOR)[_Chandy-Lamport_]

===== Objetivo

#cl_objective

===== Suposiciones

#cl_assumptions

===== Pseudocódigo

#image(cl_pseudocode_img_path)

===== Ejemplo de registro de estado global

#image(cl_cut_example_img_path)

===== Secuencia de cambios de estados globales

#image(global_state_changes_img_path)
