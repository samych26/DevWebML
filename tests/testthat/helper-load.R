# Charge config/ et models/ : on teste la couche M sans Shiny.

project_root <- normalizePath(file.path("..", ".."))
source(file.path(project_root, "loader.R"), encoding = "UTF-8")
source_layers(c("config", "models"), root = project_root)
