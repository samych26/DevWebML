# Bac à sable : appeler la couche M dans la console, sans lancer Shiny.
# Exécuter depuis la racine du projet (ouvrir projetMlsd.Rproj dans RStudio).

source("loader.R", encoding = "UTF-8")
source_layers(c("config", "models"))

data <- data.frame(
  age = c(25, 32, 47, 51),
  job = c("admin", "technician", "admin", "retired"),
  y = c("no", "yes", "no", "yes")
)
schema <- data.frame(
  var = c("age", "job", "y"),
  type = c("quanti_discrete", "quali_nominale", "quali_nominale"),
  n_levels = c(4L, 3L, 2L),
  n_missing = c(0L, 0L, 0L)
)

ds <- new_dataset(data, schema, target = "y")
print(ds)
