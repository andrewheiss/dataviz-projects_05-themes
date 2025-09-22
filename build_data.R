cheese <- tidytuesdayR::tt_load('2024-06-04')
readr::write_csv(cheese$cheeses, "data/cheeses.csv")

# Build answer key so that the plots to recreate exist in images/
quarto::quarto_render(
  "answers.qmd",
  output_format = c("html", "typst")
)
