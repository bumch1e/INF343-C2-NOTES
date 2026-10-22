## Propósito

Este repositorio contiene el código de un documento en _Typst_ para generar apuntes con la materia del
Certamen 2 del ramo de Sistemas Distribuidos (INF-343) de la UTFSM. Todo el material se basa en las
diapositivas y guías presentadas en clases durante el semestre 2026-2.

## Aspectos técnicos

Dada la cantidad considerable de contenidos por abarcar, el documento será diseñado usando una 
orientación *landscape* dividida en cuatro regiones (o columnas) por página para ahorrar el mayor
espacio posible. La disposición de información, no obstante, puede ser modificada a gusto según
se estime conveniente.

## Herramientas de desarrollo

- _GNU Make_: v4.3
- _typst-compiler_: v0.15.1
- _zathura_: v0.5.4

## Instrucciones de ejecución

En el repositorio solo se encuentra el código fuente del documento por temas de comodidad de trabajo.
Para revisar el documento en formato _PDF_, se puede utilizar el archivo `makefile` para compilar de
manera más rápida y abstracta o bien, usar los comandos del compilador de _Typst_ de manera directa
o, incluso, subir los archivos fuente a la aplicación web de _Typst_ y descargar el documento desde
ahí.

A continuación, se detallan los comandos presentes en el `makefile`. Recordar que cada uno de estos
comandos se debe ejecutar en el mismo directorio donde se encuentra el archivo *make*:

Para compilar los archivos fuente:

```bash
make compile
```

Para ver el contenido del archivo _PDF_ desde un visor de terminal (en este caso, _Zathura_):

```bash
make view
```

Para compilar y ver el contenido en un solo comando (instrucción por defecto):

```bash
make
```

> ***NOTA:*** El `makefile` también incluye una pequeña instrucción para desplegar un menú de ayuda
  para recordar los comandos desde la misma terminal. Para mostrar el menú, se usa la instrucción
  `make help`.
