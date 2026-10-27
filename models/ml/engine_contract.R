# Contrat commun à tous les modèles de classification.
#
#   fit(x, y)                -> modèle entraîné (x : data.frame, y : facteur)
#   predict_proba(model, x)  -> vecteur de probabilités de la classe positive
#   importance(model)        -> vecteur nommé d'importances des variables
#
# Ajouter un modèle = écrire une fonction engine_xxx() qui renvoie new_engine(...).

new_engine <- function(name, fit, predict_proba, importance) {
  if (!is.character(name) || length(name) != 1 || !nzchar(name)) {
    stop("`name` doit être une chaîne non vide.", call. = FALSE)
  }

  fns <- list(fit = fit, predict_proba = predict_proba, importance = importance)
  not_functions <- names(fns)[!vapply(fns, is.function, logical(1))]
  if (length(not_functions) > 0) {
    stop(
      "Le moteur « ", name, " » a des champs qui ne sont pas des fonctions : ",
      paste(not_functions, collapse = ", "),
      call. = FALSE
    )
  }

  structure(c(list(name = name), fns), class = "engine")
}

is_engine <- function(x) inherits(x, "engine")
