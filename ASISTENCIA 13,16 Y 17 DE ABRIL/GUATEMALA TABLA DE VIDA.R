# ---- Librerías necesarias ----
library(readxl)
library(dplyr)
library(data.table)
library(lubridate)
library(ggplot2)

# ---- Ruta del archivo ----
ruta_archivo <- "C:/Users/angel/Documents/DEMOGRAFÍA/DEMOGRAPHY_9219/data/DatosActividad_TablaMortalidadGuatemala2018.xlsx"

# =====================================================
# ---- DATOS 1998 ----
# =====================================================

guatemala <- read_excel(ruta_archivo,
                        sheet = "tabla mortalidad 1998",
                        skip = 1) %>%
  
  rename_with(~trimws(.x)) %>%
  
  rename_with(~case_when(
    .x == "x (edad)" ~ "x",
    .x == "x(edad)" ~ "x",
    .x == "n" ~ "n",
    .x == "nNx" ~ "N",
    .x == "nDx" ~ "D",
    TRUE ~ .x
  )) %>%
  
  mutate(
    edad_original = x,
    open_age = grepl("\\+", x),
    x = gsub("\\+", "", x)
  ) %>%
  
  mutate(
    x = as.numeric(x),
    n = as.numeric(n),
    N = as.numeric(N),
    D = as.numeric(D),
    mx = D / N
  ) %>%
  
  filter(!is.na(x), !is.na(mx))


# =====================================================
# ---- FUNCIÓN ----
# =====================================================

lt_abr <- function(x, n, mx, open_age, sex = "f"){
  
  m <- length(x)
  ax <- n/2
  
  ax[1] <- ifelse(mx[1] >= 0.107, 0.350, 0.053 + 2.800 * mx[1])
  ax[2] <- ifelse(mx[1] >= 0.107, 1.361, 1.522 + 1.518 * mx[1])
  
  qx <- (n * mx) / (1 + (n - ax) * mx)
  
  last <- which(open_age == TRUE)
  if(length(last) == 0) last <- m
  
  qx[last] <- 1
  
  px <- 1 - qx
  px[last] <- 0
  
  lx <- numeric(m)
  lx[1] <- 100000
  
  for(i in 2:m){
    lx[i] <- lx[i-1] * px[i-1]
  }
  
  dx <- lx * qx
  
  Lx <- n * lx - (n - ax) * dx
  Lx[last] <- lx[last] / mx[last]
  
  Tx <- rev(cumsum(rev(Lx)))
  ex <- Tx / lx
  
  data.table(x, mx, lx, dx, Lx, Tx, ex)
}


# =====================================================
# ---- TABLA 1998 ----
# =====================================================

tabla_vida <- lt_abr(
  guatemala$x,
  guatemala$n,
  guatemala$mx,
  guatemala$open_age
)


# =====================================================
# ---- DATOS 2018 (CORREGIDO) ----
# =====================================================

guatemala2018 <- read_excel(ruta_archivo,
                            sheet = "tabla mortalidad 2018",
                            skip = 1) %>%
  
  rename_with(~trimws(.x)) %>%
  
  rename_with(~case_when(
    .x == "x (edad)" ~ "x",
    .x == "x(edad)" ~ "x",
    .x == "n" ~ "n",
    .x == "nNx" ~ "N",
    .x == "nDx" ~ "D",
    TRUE ~ .x
  )) %>%
  
  mutate(
    edad_original = x,
    open_age = grepl("\\+", x),
    x = gsub("\\+", "", x)
  ) %>%
  
  mutate(
    x = as.numeric(x),
    n = as.numeric(n),
    N = as.numeric(N),
    D = as.numeric(D),
    mx = D / N
  ) %>%
  
  filter(!is.na(x), !is.na(mx))


tabla_vida_2018 <- lt_abr(
  guatemala2018$x,
  guatemala2018$n,
  guatemala2018$mx,
  guatemala2018$open_age
)


# =====================================================
# ---- COMPARATIVA ----
# =====================================================

tabla_comparativa <- bind_rows(
  tabla_vida %>% mutate(anio = 1998),
  tabla_vida_2018 %>% mutate(anio = 2018)
)

print(tabla_comparativa)


# =====================================================
# ---- GRÁFICA ----
# =====================================================

ggplot(tabla_comparativa %>% filter(mx > 0),
       aes(x = x, y = mx, color = factor(anio))) +
  geom_line(size = 1) +
  scale_y_log10() +
  theme_minimal()
