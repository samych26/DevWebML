test_that("un dataset valide est créé avec sa classe", {
  ds <- fake_dataset()
  expect_s3_class(ds, "dataset")
  expect_equal(ds$target, "y")
  expect_equal(nrow(ds$data), 4)
})

test_that("la cible est facultative", {
  expect_null(fake_dataset(target = NULL)$target)
})

test_that("une variable du schéma absente des données est refusée", {
  ds <- fake_dataset()
  schema <- rbind(ds$schema, data.frame(var = "inconnue", type = "quanti_continue", n_levels = NA, n_missing = 0))
  expect_error(new_dataset(ds$data, schema), "absentes des données : inconnue")
})

test_that("une cible inexistante est refusée", {
  ds <- fake_dataset()
  expect_error(new_dataset(ds$data, ds$schema, target = "z"), "La cible « z »")
})

test_that("un type inconnu est refusé", {
  ds <- fake_dataset()
  ds$schema$type[1] <- "numerique"
  expect_error(new_dataset(ds$data, ds$schema), "Types inconnus")
})

test_that("un schéma incomplet est refusé", {
  ds <- fake_dataset()
  expect_error(new_dataset(ds$data, ds$schema[, c("var", "type")]), "n_levels, n_missing")
})

test_that("des données qui ne sont pas un data.frame sont refusées", {
  ds <- fake_dataset()
  expect_error(new_dataset(as.list(ds$data), ds$schema), "data.frame")
})
