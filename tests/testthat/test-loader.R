test_that("source_layers charge les sous-dossiers, couche par couche, dans l'ordre", {
  root <- tempfile("layers-")
  dir.create(file.path(root, "a", "sous"), recursive = TRUE)
  dir.create(file.path(root, "b"))
  writeLines("ordre_chargement <- 'a'", file.path(root, "a", "sous", "f.R"))
  writeLines("ordre_chargement <- paste(ordre_chargement, 'b')", file.path(root, "b", "g.R"))
  withr::defer({
    unlink(root, recursive = TRUE)
    rm("ordre_chargement", envir = globalenv())
  })

  source_layers(c("a", "b"), root = root)

  expect_equal(get("ordre_chargement", envir = globalenv()), "a b")
})

test_that("une couche vide ou absente ne provoque pas d'erreur", {
  expect_no_error(source_layers("dossier_inexistant", root = tempdir()))
})
