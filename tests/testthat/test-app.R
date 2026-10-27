# Test de fumée : toutes les couches se chargent et l'application se construit.

test_that("l'interface et le serveur principaux sont définis", {
  library(shiny)
  library(bslib)
  source_layers(c("views", "controllers"), root = project_root)

  expect_true(is.function(main_server))
  expect_s3_class(main_ui(), "shiny.tag.list")
  expect_s3_class(shinyApp(ui = main_ui(), server = main_server), "shiny.appobj")
})
