# Bac à sable : appeler les fonctions de config/ et models/ dans la console, sans lancer Shiny.
# Exécuter depuis la racine du projet (ouvrir projetMlsd.Rproj dans RStudio).

source("loader.R", encoding = "UTF-8")
source_layers(c("config", "models"))

# Essayer ici les fonctions en cours de développement, par exemple :
# df <- read.csv("data/mon_fichier.csv")
# ma_fonction(df)
