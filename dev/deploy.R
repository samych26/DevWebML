# Déploiement sur shinyapps.io.
#
# À faire une seule fois par poste : sur shinyapps.io, menu Account > Tokens,
# cliquer « Show » puis copier la commande rsconnect::setAccountInfo(...) dans la console.
# Ne jamais commiter le token.

app_files <- c(
  "app.R", "global.R", "loader.R", "renv.lock",
  list.files(
    c("config", "models", "views", "controllers", "www", "data"),
    recursive = TRUE,
    full.names = TRUE
  )
)

rsconnect::deployApp(
  appDir = ".",
  appName = "projet-mlsd",
  appFiles = app_files,
  forceUpdate = TRUE
)
