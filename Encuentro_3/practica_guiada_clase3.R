#Práctica Guiada: mi primera tabla mas o menos decente

#Carga librerias
library(tidyverse)
library(eph)

#Carga datos

eph_3t24 <- get_microdata(year = 2024, period = 3, type = "individual")

# Tranformamos algunas variables

eph_3t24 <- eph_3t24 %>% 
  mutate(
    Sexo = case_when(
      CH04 == 1 ~ "Varones",
      CH04 == 2 ~ "Mujeres"),
    Edad = case_when(
      CH06 <= 29 ~ "Hasta 29 años",
      CH06 >= 30 & CH06 <= 64 ~ "De 30 a 64 años",
      CH06 >= 65 ~ "65 años y más"))

# Armamos una tabla base para saber cuantos son (sin ponderar)
tabla1 <- #este es el objeto que vamos a crear que se llamará tabla 1. Como objeto es un tbl_df (data frame introducido por el paquete tibble)

# Paso 1: llamamos a la base 
  eph_3t24 %>% 
  # eph_3t24 es la base del 3er trimestre de 2024
  # %>% es el "pipe" permite escribir code sin anidar funciones, va "pegando/conectando" difeerentes partes del código

# Paso 2: aplicamos count. 
  #Con esto vamos a contar el número de observaciones, esto es, cuántas veces aparece cada combinación de la variable Sexo y Edad
  #Creamos una nueva columna llamada n que almacenará las frecuencias
  count(Sexo, Edad) %>% 
  #count es una función de dplyr que cuenta el número de observaciones por cada combinación de variables que le pasemos
  
print(tabla1) #(Vemos que sale)

#Perfecto, tenemos una tabla, el conteo, pero nos falta ordenar no?
# le mandamos un pivot_wider para que nos muestre los valores de la variable Sexo en columnas

tabla1 <-
  eph_3t24 %>% 
  count(Sexo, Edad) %>%
  pivot_wider(names_from = Sexo, #aca tenemos que los valores unicos de la variable sexo se convierten en columnas, en este caso dos (Varones y Mujeres) 
              values_from = n, # esto lo aprovechamos por defecto, me dice que los valores que se llenan en las nuevas columnas vienen de la variable n (cantidad de observaciones obtenidas con coun())
              values_fill = 0) # esto es para que si no hay valores en alguna celda, se rellene con 0 (para más placer y para que no nos embrome la tabla con un NA bien horrible)

print (tabla1) #vemos que sale

#¿Mas piola no? pero loco yo no quiero ver de 65 y mas, de 30 a 64, quiero ordenarlo desde el grupo de edad de menor cantidad de años hasta el mayor, 
# Traemos al viejo y querido arrange para ordenar la tabla

tabla1 <- eph_3t24 %>%
  count(Sexo, Edad) %>%
  pivot_wider(names_from = Sexo, values_from = n, values_fill = 0) %>%
  arrange(case_when(
    Edad == "Hasta 29 años" ~ 1,
    Edad == "De 30 a 64 años" ~ 2,
    Edad == "65 años y más" ~ 3)) #ordenamos la tabla según la variable Edad, de menor a mayor

View(tabla1) #vemos que sale

#El señor mutate recomendado de la variable ESTADO
eph_3t24ok <- eph_3t24 %>% 
  mutate(
    Estado = case_when(
      ESTADO == 0 ~ "No realizada",
      ESTADO == 1 ~ "Ocupado",
      ESTADO == 2 ~ "Desocupado",
      ESTADO == 3 ~ "Inactivo",
      ESTADO == 4 ~ "Menor de 10"))