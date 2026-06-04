# 📊 Análisis Demográfico de Puebla: Construcción y Evaluación de Tablas de Vida (2010, 2019 y 2021)

## 👥Integrantes

- **Ángel Ernesto Castro García**
- **Ximena Ramírez Pera**

---

# 📋Resumen Ejecutivo

El presente proyecto desarrolla un análisis demográfico y actuarial del estado de Puebla mediante la construcción de tablas de vida abreviadas para hombres y mujeres en los años 2010, 2019 y 2021.

A partir de información oficial proveniente del INEGI y CONAPO, se estiman indicadores fundamentales de mortalidad, supervivencia y esperanza de vida, permitiendo evaluar los cambios ocurridos durante la última década y cuantificar el impacto demográfico asociado a la pandemia por COVID-19.

Además, se incorpora un ejercicio de **tablas de vida con causa eliminada**, analizando el efecto de los homicidios sobre la esperanza de vida de la población poblana, así como un estudio complementario de las tasas específicas de fecundidad y la dinámica reciente de la estructura poblacional.

Todo el análisis fue desarrollado en **R, RStudio y Quarto**, garantizando la reproducibilidad completa de los resultados.

---

# Descripción del Proyecto

El estudio fue planteado bajo el contexto de una consultoría demográfica-actuarial interesada en evaluar la evolución reciente de la mortalidad en Puebla.

Las tablas de vida constituyen una de las herramientas más importantes de la demografía formal y de la ciencia actuarial, ya que permiten describir el comportamiento de la supervivencia de una cohorte hipotética sometida a las condiciones de mortalidad observadas en un momento determinado.

Mediante este enfoque es posible:

- Estimar esperanzas de vida.
- Comparar niveles de mortalidad entre sexos.
- Analizar cambios temporales en la supervivencia.
- Evaluar el impacto de fenómenos extraordinarios como la pandemia de COVID-19.
- Medir los efectos de causas específicas de muerte sobre la longevidad poblacional.

---

# 🎯 Objetivo General

Construir tablas de vida para hombres y mujeres del estado de Puebla en los años 2010, 2019 y 2021, con el propósito de analizar la evolución reciente de los niveles de mortalidad, supervivencia y esperanza de vida.

---

# 📌 Objetivos Específicos

- Caracterizar el contexto demográfico del estado de Puebla.
- Documentar rigurosamente la metodología de construcción de tablas de vida.
- Implementar las principales funciones actuariales y demográficas.
- Calcular tasas centrales de mortalidad por edad y sexo.
- Estimar probabilidades de muerte y supervivencia.
- Obtener funciones de sobrevivencia para cohortes hipotéticas.
- Estimar esperanzas de vida por sexo y año.
- Analizar los cambios observados entre 2010, 2019 y 2021.
- Evaluar el impacto demográfico de la pandemia por COVID-19.
- Construir tablas de vida con causa eliminada para analizar el efecto de los homicidios.
- Generar visualizaciones demográficas para facilitar la interpretación de resultados.

---

# 🧮 Metodología

La construcción de las tablas de vida siguió la metodología clásica de la demografía formal:

1. Recolección de bases de población y mortalidad.
2. Depuración y validación de datos.
3. Clasificación por grupos quinquenales de edad y sexo.
4. Cálculo de tasas centrales de mortalidad (\(m_x\)).
5. Estimación de probabilidades de muerte (\(q_x\)).
6. Obtención de probabilidades de supervivencia (\(p_x\)).
7. Definición de una cohorte hipotética inicial (\(l_0 = 100,000\)).
8. Cálculo de sobrevivientes (\(l_x\)).
9. Estimación de defunciones (\(d_x\)).
10. Obtención de años-persona vividos (\(L_x\)).
11. Cálculo de años acumulados por vivir (\(T_x\)).
12. Estimación de esperanza de vida (\(e_x\)).
13. Comparación temporal entre 2010, 2019 y 2021.
14. Construcción de tablas de vida con causa eliminada.
15. Interpretación demográfica y actuarial de los resultados.

---

# 📈 Principales Resultados

Las estimaciones obtenidas muestran una mejora sostenida de la supervivencia entre 2010 y 2019, seguida de un deterioro significativo durante 2021 asociado al impacto de la pandemia.

| Año | Mujeres | Hombres |
|------|----------|----------|
| 2010 | 76.51 | 71.74 |
| 2019 | 77.87 | 72.43 |
| 2021 | 72.02 | 64.61 |

## 🔍 Hallazgos Relevantes

- Las mujeres presentan consistentemente mayores niveles de supervivencia que los hombres.
- Entre 2010 y 2019 se observa una mejora en la esperanza de vida para ambos sexos.
- En 2021 ocurre una reducción importante de la longevidad.
- El impacto fue considerablemente más severo en hombres.
- Las mayores diferencias se concentran en edades adultas y avanzadas.
- Los homicidios generan pérdidas apreciables de años de vida, particularmente en la población masculina.
- La mortalidad en Puebla mantiene patrones compatibles con una transición demográfica avanzada.
- La pandemia alteró temporalmente la trayectoria histórica de mejora en supervivencia observada durante la década previa.

---

# 🚀 Contribuciones del Proyecto

El proyecto aporta una evaluación demográfica integral de Puebla mediante:

- Construcción de seis tablas de vida completas por sexo y año.
- Elaboración de tablas de vida con causa eliminada para homicidios.
- Estimación de funciones actuariales de supervivencia y mortalidad.
- Evaluación del impacto de COVID-19 sobre la esperanza de vida.
- Análisis de diferencias de mortalidad entre hombres y mujeres.
- Estudio de la dinámica de fecundidad mediante tasas específicas.
- Incorporación de proyecciones poblacionales de largo plazo.
- Automatización completa del proceso mediante R y Quarto para garantizar reproducibilidad.

---

# 📉 Visualizaciones Incluidas

## 👨‍👩‍👧‍👦 Estructura Poblacional

- Pirámide poblacional de Puebla (2026).
- Pirámide poblacional proyectada (2070).

## ⚰️ Mortalidad y Supervivencia

- Funciones de supervivencia.
- Probabilidades de morir por edad.
- Tasas centrales de mortalidad.
- Mortalidad en escala logarítmica.
- Años-persona vividos.
- Comparación de supervivencia entre años.

## 📊 Indicadores Demográficos

- Evolución de la esperanza de vida.
- Crecimiento poblacional.
- Comparaciones por sexo y año.

## 👶 Fecundidad

- Tasas específicas de fecundidad.
- Análisis del comportamiento reproductivo.

---

# 💻 Tecnologías Utilizadas

- R
- RStudio
- Quarto
- data.table
- dplyr
- tidyr
- ggplot2
- readxl
- kableExtra
- knitr
- lubridate

---

# 🗂️ Estructura del Repositorio

```text
AnalisisDemograficoPuebla/

│
├── data/
│   ├── Bases de población
│   ├── Defunciones registradas
│   ├── Tablas de mortalidad
│   ├── Esperanzas de vida
│   └── Archivos auxiliares
│
├── script/
│   ├── Limpieza de datos
│   ├── Construcción de tablas de vida
│   ├── Gráficas
│   └── Análisis complementarios
│
├── INFORME.qmd
├── INFORME.pdf
├── diagrama_metodologia.png
└── README.md
```
## 📥 Clonar repositorio
git clone https://github.com/ANGELERNESTOCASTRO-stack/AnalisisDemograficoPuebla.git

## 📦Instalar dependencias
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

## 🏛️ Fuentes de Información
Instituto Nacional de Estadística y Geografía (INEGI)
Estadísticas de Defunciones Registradas
Censos de Población y Vivienda
Proyecciones de Población de México 1950–2070

## 📚 Referencias

Preston, Samuel H., Heuveline, Patrick & Guillot, Michel. (2001). Demography: Measuring and Modeling Population Processes. Oxford: Blackwell Publishers.

Wachter, Kenneth W. (2014). Essential Demographic Methods. Cambridge, Massachusetts: Harvard University Press.

United Nations. (2024). World Population Prospects 2024. United Nations Department of Economic and Social Affairs.

Consejo Nacional de Población (CONAPO). Proyecciones de la Población de México 1950–2070. Gobierno de México.

Instituto Nacional de Estadística y Geografía (INEGI). Estadísticas Demográficas y Censos de Población y Vivienda. Gobierno de México.

## 📜 Licencia

Este proyecto fue desarrollado con fines académicos dentro del área de Demografía y Ciencia Actuarial. La información utilizada proviene de fuentes públicas oficiales y el código puede ser reutilizado con fines educativos y de investigación, citando adecuadamente a los autores y las fuentes de información empleadas.

