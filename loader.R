# Chargement des couches du projet.
# Shiny ne source pas automatiquement les sous-dossiers : on le fait ici,
# dans l'ordre des dépendances (config -> models -> views -> controllers).

source_layers <- function(layers, root = ".") {
  for (layer in layers) {
    files <- list.files(
      file.path(root, layer),
      pattern = "\\.[Rr]$",
      recursive = TRUE,
      full.names = TRUE
    )
    for (f in sort(files)) {
      source(f, local = globalenv(), encoding = "UTF-8")
    }
  }
  invisible(TRUE)
}
