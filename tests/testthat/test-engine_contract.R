test_that("un moteur valide respecte le contrat", {
  engine <- fake_engine()
  expect_true(is_engine(engine))
  expect_equal(engine$name, "Constant")
})

test_that("un champ qui n'est pas une fonction est refusé", {
  expect_error(
    new_engine("Cassé", fit = function(x, y) NULL, predict_proba = "pas une fonction", importance = 42),
    "predict_proba, importance"
  )
})

test_that("un nom vide est refusé", {
  expect_error(new_engine("", identity, identity, identity), "chaîne non vide")
})

test_that("le moteur factice s'entraîne et prédit", {
  engine <- fake_engine(p = 0.5)
  x <- fake_dataset()$data[, c("age", "job")]
  model <- engine$fit(x, factor(c("no", "yes", "no", "yes")))
  expect_equal(engine$predict_proba(model, x), rep(0.5, 4))
  expect_named(engine$importance(model), c("age", "job"))
})
