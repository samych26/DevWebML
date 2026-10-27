# Objets factices réutilisables dans les tests.

# Moteur qui prédit toujours la même probabilité, pour tester les services ML
# sans dépendre d'un vrai modèle.
fake_engine <- function(p = 0.5) {
  new_engine(
    name = "Constant",
    fit = function(x, y) list(p = p, vars = names(x)),
    predict_proba = function(model, x) rep(model$p, nrow(x)),
    importance = function(model) setNames(rep(0, length(model$vars)), model$vars)
  )
}

fake_dataset <- function(target = "y") {
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
  new_dataset(data, schema, target = target)
}
