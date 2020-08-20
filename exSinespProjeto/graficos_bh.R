library(dplyr)
library(ggplot2)

#Importação

dados_sinesp <- readr::read_rds("data/dados_sinesp.rds")

#Visualização

source("R/graficos.R")

gerar_grafico_serie(
  tab = dados_sinesp,
  municipio_nome = "Belo Horizonte"
)



#
# dados_sinesp %>%
#   filter(municipio == "Belo Horizonte") %>%
#   ggplot() +
#   geom_line(aes(x = mes_ano, y = vitimas)) +
#   labs(x = "Mês", y = "Número do Vítimas") +
#   theme_minimal()
