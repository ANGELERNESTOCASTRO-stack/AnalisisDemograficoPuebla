# 📊 Análisis Demográfico y Construcción de Tablas de Vida — Puebla

Proyecto académico de la Licenciatura en Actuaría de la UNAM enfocado en la construcción y análisis de tablas de vida para el estado de Puebla en los años 2010, 2019 y 2021 por sexo, utilizando herramientas demográficas, estadísticas y programación en R.

---

## 🎯 Objetivo

Construir tablas de vida para el estado de Puebla y analizar la evolución de la mortalidad antes y después del impacto de la COVID-19, utilizando información demográfica y métodos actuariales.

---

## 🧮 Contenido del Proyecto

Este repositorio contiene:

* Bases de datos utilizadas
* Scripts en R
* Gráficas y visualizaciones
* Fórmulas demográficas
* Tablas de vida
* Esperanzas de vida
* Informe final en PDF realizado en Quarto

---

## 🗂️ Estructura del Proyecto

```text
ProyectoDemografia/
│
├── data/          # Bases de datos
├── scripts/       # Código en R
├── graficas/      # Visualizaciones
├── output/        # Resultados y tablas
├── informe.qmd    # Documento Quarto
├── informe.pdf    # Informe final
├── README.md
└── ProyectoDemografia.Rproj
```

---

## ⚙️ Metodología

El proceso general para la construcción de las tablas de vida fue:

1. Limpieza y procesamiento de datos
2. Estimación de población expuesta
3. Cálculo de tasas centrales de mortalidad
4. Estimación de probabilidades de muerte
5. Construcción de funciones biométricas:

   * (m_x)
   * (q_x)
   * (l_x)
   * (d_x)
   * (L_x)
   * (T_x)
   * (e_x)
6. Elaboración de gráficas y análisis demográfico

---

## 📈 Indicadores Analizados

* Tasas de mortalidad
* Esperanza de vida al nacer
* Defunciones por edad y sexo
* Probabilidades de muerte
* Supervivencia poblacional
* Impacto de COVID-19 en 2021

---

## 🦠 Impacto de COVID-19

Se analiza el efecto de la pandemia de COVID-19 sobre la mortalidad en Puebla durante 2021, comparando los cambios observados respecto a 2010 y 2019.

---

## 🛠️ Herramientas Utilizadas

* R
* RStudio
* Quarto
* Git
* GitHub

Paquetes principales:

```r
library(tidyverse)
library(data.table)
library(ggplot2)
library(readxl)
library(DemoTools)
```

---

## ▶️ Reproducibilidad

Para replicar el proyecto:

1. Clonar el repositorio
2. Abrir el archivo `.Rproj`
3. Ejecutar los scripts en orden
4. Renderizar el archivo Quarto

```bash
quarto render informe.qmd --to pdf
```

---

## 📄 Informe Final

El reporte completo se encuentra en:

```text
informe.pdf
```

---

## 👨‍🎓 Autores

Estudiantes de la Licenciatura en Actuaría
Universidad Nacional Autónoma de México (UNAM)

---

## 📌 Nota

Este proyecto fue desarrollado con fines académicos para el análisis demográfico y actuarial del estado de Puebla.
