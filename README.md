# Análisis Demográfico de Puebla: Construcción de Tablas de Vida (2010, 2019 y 2021)

## Integrantes

- CASTRO GARCIA ANGEL ERNESTO
- RAMÍREZ PERA XIMENA

---

## Descripción del proyecto

Este proyecto fue desarrollado bajo el supuesto de una consultoría actuarial cuyo objetivo consiste en construir y analizar tablas de vida para el estado de Puebla en los años 2010, 2019 y 2021 por sexo.

El estudio incorpora métodos demográficos y actuariales para estimar indicadores de mortalidad y supervivencia, identificar cambios temporales en la estructura poblacional y evaluar el efecto de la pandemia por COVID-19 sobre la evolución reciente de los indicadores.

Todo el proyecto fue desarrollado mediante **R, RStudio y Quarto**, permitiendo la completa reproducibilidad del análisis.

---

## Objetivo general

Construir tablas de vida para hombres y mujeres del estado de Puebla en los años 2010, 2019 y 2021 y analizar la evolución de los principales indicadores demográficos.

---

## Objetivos específicos

- Analizar características demográficas de Puebla relacionadas con el comportamiento de la mortalidad.
- Documentar el procedimiento metodológico utilizado.
- Implementar fórmulas actuariales y demográficas.
- Estimar esperanzas de vida por sexo y año.
- Generar visualizaciones demográficas.
- Analizar el impacto de COVID-19 sobre los indicadores de mortalidad.

---

## Metodología aplicada

El procedimiento utilizado para la construcción de las tablas de vida fue:

1. Obtención de bases de población y mortalidad.
2. Limpieza y transformación de datos.
3. Clasificación por edad y sexo.
4. Cálculo de tasas centrales de mortalidad (mx).
5. Estimación de probabilidades de muerte (qx).
6. Obtención de probabilidades de supervivencia (px).
7. Construcción de cohorte hipotética inicial (l0=100000).
8. Cálculo de sobrevivientes (lx).
9. Estimación de defunciones (dx).
10. Cálculo de años-persona vividos (Lx).
11. Obtención de años acumulados por vivir (Tx).
12. Cálculo de esperanza de vida (ex).
13. Comparación entre 2010, 2019 y 2021.

---

## Contenido solicitado

El informe incluye:

### a) Contexto demográfico de Puebla

- Particularidades de la entidad relacionadas con mortalidad
- Características territoriales
- Estructura poblacional
- Indicadores relevantes

### b) Diagrama metodológico

- Flujo de construcción de tablas de vida

### c) Fórmulas empleadas

- Tasa central de mortalidad
- Probabilidad de morir
- Probabilidad de sobrevivir
- Función de sobrevivencia
- Defunciones
- Esperanza de vida
- Modelo de crecimiento exponencial

### d) Código utilizado

- Scripts completos en R

### e) Cuadro de esperanzas de vida

- Esperanza de vida al nacer por sexo y año

### f) Gráficas incluidas

- Pirámides poblacionales
- Esperanza de vida
- Mortalidad
- Supervivencia
- Probabilidad de morir
- Crecimiento poblacional
- APV

### g) Análisis de resultados

- Evolución de indicadores
- Diferencias por sexo
- Impacto de COVID-19 en Puebla

---

## Estructura del repositorio

```text
AnalisisDemograficoPuebla/

│── data/
│      Bases de datos
│      Tablas de mortalidad
│      Defunciones
│      Cuadros de esperanza de vida
│      Imágenes utilizadas

│── script/
│      Código de procesamiento y análisis

│── INFORME.qmd

│── INFORME.pdf

│── diagrama_metodologia.png

│── README.md
```

---

## Reproducibilidad

### Clonar repositorio

```bash
git clone https://github.com/ANGELERNESTOCASTRO-stack/AnalisisDemograficoPuebla.git
```

### Instalar paquetes

```r
install.packages(c(
"data.table",
"ggplot2",
"dplyr",
"tidyr",
"kableExtra",
"lubridate",
"readxl",
"knitr"
))
```

### Generar informe

```bash
quarto render INFORME.qmd
```

---

## Fuentes de información

- CONAPO: Proyecciones de población de México
- INEGI: Censos y defunciones registradas


---

## Link del repositorio

Repositorio GitHub:

https://github.com/ANGELERNESTOCASTRO-stack/AnalisisDemograficoPuebla/tree/main

---

## Referencias

Preston, S. H., Heuveline, P., & Guillot, M. (2001). *Demography: Measuring and Modeling Population Processes.*

Wachter, K. W. (2006). *Essential Demographic Methods.*

United Nations. (2024). *World Population Prospects 2024.*

CONAPO. Proyecciones de población de México 1950–2070.

INEGI. Estadísticas demográficas y censales.
