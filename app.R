# Point d'entrée. Avec un app.R, Shiny ne source pas global.R tout seul :
# on le charge ici (packages + couches MVC).

source("global.R", encoding = "UTF-8")

shinyApp(ui = main_ui(), server = main_server)
