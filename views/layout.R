# Page principale : assemble les blocs de l'interface (page unique, sans onglets).

main_ui <- function() {
  page_fluid(
    title = "Explorateur ML",
    h1("Explorateur ML"),
    p("Application R Shiny d'exploration de données et de classification supervisée.")
  )
}
