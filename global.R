# Packages et couches MVC, chargés par app.R.

library(shiny)
library(bslib)

source("loader.R", encoding = "UTF-8")
source_layers(c("config", "models", "views", "controllers"))
