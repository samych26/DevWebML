# Entité centrale : l'objet que toutes les couches s'échangent.
#
#   data   : data.frame des observations
#   schema : data.frame avec une ligne par variable (var, type, n_levels, n_missing)
#   target : nom de la variable cible, ou NULL

VAR_TYPES <- c(
  "quanti_continue",
  "quanti_discrete",
  "quali_nominale",
  "quali_ordinale",
  "ignoree"
)

SCHEMA_COLUMNS <- c("var", "type", "n_levels", "n_missing")

new_dataset <- function(data, schema, target = NULL) {
  ds <- structure(
    list(data = data, schema = schema, target = target),
    class = "dataset"
  )
  validate_dataset(ds)
}

validate_dataset <- function(ds) {
  if (!is.data.frame(ds$data)) {
    stop("`data` doit être un data.frame.", call. = FALSE)
  }
  if (!is.data.frame(ds$schema)) {
    stop("`schema` doit être un data.frame.", call. = FALSE)
  }

  missing_cols <- setdiff(SCHEMA_COLUMNS, names(ds$schema))
  if (length(missing_cols) > 0) {
    stop(
      "Colonnes manquantes dans le schéma : ", paste(missing_cols, collapse = ", "),
      call. = FALSE
    )
  }

  unknown_vars <- setdiff(ds$schema$var, names(ds$data))
  if (length(unknown_vars) > 0) {
    stop(
      "Variables du schéma absentes des données : ", paste(unknown_vars, collapse = ", "),
      call. = FALSE
    )
  }

  bad_types <- setdiff(unique(ds$schema$type), VAR_TYPES)
  if (length(bad_types) > 0) {
    stop(
      "Types inconnus dans le schéma : ", paste(bad_types, collapse = ", "),
      ". Types autorisés : ", paste(VAR_TYPES, collapse = ", "),
      call. = FALSE
    )
  }

  if (!is.null(ds$target)) {
    if (!is.character(ds$target) || length(ds$target) != 1) {
      stop("`target` doit être un nom de variable unique.", call. = FALSE)
    }
    if (!ds$target %in% names(ds$data)) {
      stop("La cible « ", ds$target, " » n'existe pas dans les données.", call. = FALSE)
    }
  }

  ds
}

print.dataset <- function(x, ...) {
  cat(sprintf("<dataset> %d lignes × %d variables\n", nrow(x$data), ncol(x$data)))
  cat("Cible :", if (is.null(x$target)) "aucune" else x$target, "\n")
  print(x$schema, row.names = FALSE)
  invisible(x)
}
