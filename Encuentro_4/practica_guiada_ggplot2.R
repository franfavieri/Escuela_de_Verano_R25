#Practica guiada ggplot2

#2dos trimestres en modo serie, así vemos el bajón de la pandemia en Cuyo
base_serie <- get_microdata(
  year = 2019:2024,#banda
  period = 2, #2do trimestre
  type = "individual")

#Ahora si veamos la serie

#Tabla Serie
tabla_serie <- base_serie %>% 
  filter(REGION == 42) %>% 
  group_by(ANO4, TRIMESTRE) %>% 
  summarise(pob               = sum(PONDERA),
            ocup              = sum(PONDERA[ESTADO == 1]),
            ocup_TE           = round(ocup / pob * 100, 1), #esta ya la performateo
            desocup           = sum(PONDERA[ESTADO == 2]),
            PEA               = ocup + desocup,
            PEA_TA            = round(PEA / pob * 100, 1), #performateada
            desocup_TD        = round(desocup / PEA * 100, 1), #performateada
            .groups = "drop") %>% 
  pivot_longer(cols = c(pob:desocup_TD), names_to = "Tasa", values_to = "Valor")

view(tabla_serie)

#Ahora el grafico de líneas

# Filtrar las "Tasas generales"
tasas_generales <- tabla_serie %>% 
  filter(Tasa %in% c("ocup_TE", "desocup_TD", "PEA_TA"))

# Crear el gráfico de líneas para las "Tasas generales"
ggplot(tasas_generales, aes(x = ANO4, y = Valor, color = Tasa, group = Tasa)) +
  geom_line(size = 1) +
  geom_point(size = 2) +
  labs(title = "Tasas Generales (2016-2024)",
       x = "Año",
       y = "Porcentaje",
       color = "Variable") +
  theme_minimal()

