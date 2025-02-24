#Páctica guiada encuentro 4 con kableExtra

#Paquetes para que funcione este coso
library(tidyverse)
library(eph)
library(knitr)
library(kableExtra)

#Carga de BBDD
eph_data <- get_microdata(year = 2023, trimester = 4, type = "individual")

#Mutamos
eph_3t24 <- eph_data %>% 
  mutate(
    Sexo = case_when(
      CH04 == 1 ~ "Varones",
      CH04 == 2 ~ "Mujeres"),
    Edad = case_when(
      CH06 <= 29 ~ "Hasta 29 años",
      CH06 >= 30 & CH06 <= 64 ~ "De 30 a 64 años",
      CH06 >= 65 ~ "65 años y más"),
    Estado = case_when(
      ESTADO == 0 ~ "No realizada",
      ESTADO == 1 ~ "Ocupado",
      ESTADO == 2 ~ "Desocupado",
      ESTADO == 3 ~ "Inactivo",
      ESTADO == 4 ~ "Menor de 10"))

# Vamos a armar una tabla con las tasas de subocupación para el aglomerado Gran Mendoza durante el 3er trimestre de 2024

tabla_subocupados <- eph_3t24 %>% 
  filter(AGLOMERADO == 10) %>% # Gran Mendoza
  summarise(pob               = sum(PONDERA), # con PONDERA ponderamos claro que sí
            ocup              = sum(PONDERA[ESTADO == 1]),
            desocup           = sum(PONDERA[ESTADO == 2]),
            PEA               = ocup + desocup,
            subocup_dem       = sum(PONDERA[ESTADO == 1 & INTENSI == 1 & PP03J == 1]),
            subocup_nodem     = sum(PONDERA[ESTADO == 1 & INTENSI == 1 & PP03J %in% c(2,9)]),
            subocup               = subocup_dem + subocup_nodem,
            'Tasa de Subocupación'            = round(subocup/PEA *100, 1),
            'Tasa de Subocupación demandante' = round(subocup_dem/PEA *100, 1),
            'Tasa de Subocupación no demandante' = round(subocup_nodem/PEA *100, 1)) %>%
  pivot_longer(cols = c(7:10), names_to = "Tasas", values_to = "Valor") %>%
  group_by(Tasas) %>%
  summarise(Valor = first(Valor))

kable(tabla_subocupados[1:3, ], caption = "Tabla 2: Tasas de subocupación. Gran Mendoza. 3er trimestre de 2024") %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed", "responsive"),
                full_width = FALSE, position = "center") %>%
  footnote(general_title = "Fuente: Elaboración propia en base a microdatos de EPH-INDEC.", 
           general = "Nota: Los valores exhibidos están ponderados")

View(tabla_subocupados)
