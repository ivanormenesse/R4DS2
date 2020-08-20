## code to prepare `dados_sinesp` dataset goes here

usethis::use_data(dados_sinesp, overwrite = TRUE)

# importação
caminho <- "data-raw/indicadoressegurancapublicamunicmar20.xlsx"

abas <- readxl::excel_sheets(caminho)

dados_sinesp <- purrr::map(
  abas,
  ~readxl::read_excel(caminho, sheet = .x, col_types = c(
    "text","text","text","date","numeric"
   )
  )
)

dados_sinesp <- dplyr::bind_rows(dados_sinesp)

# Arrumação

dados_sinesp <- janitor::clean_names(dados_sinesp)

readr::write_rds(dados_sinesp,
                 "data/dados_sinesp.rds",
                 compress = "gz"
                 )

View(dados_sinesp)

