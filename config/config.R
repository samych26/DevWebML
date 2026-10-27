# Constantes du projet. Aucune de ces valeurs ne doit être écrite en dur ailleurs.

APP_CONFIG <- list(
  # Reproductibilité (split, rééquilibrage, modèles)
  seed = 42,

  # Détection des types
  quali_max_distinct = 10,   # numérique avec <= 10 valeurs distinctes -> proposée qualitative
  max_levels = 20,           # au-delà : alerte « trop de modalités »

  # Qualité des données
  na_drop_threshold = 0.5,   # variable supprimée au-delà de 50 % de NA
  min_class_ratio = 0.2,     # alerte si la classe minoritaire de la cible < 20 %

  # Prétraitement
  iqr_multiplier = 1.5,      # règle de Tukey : [Q1 - 1,5 IQ ; Q3 + 1,5 IQ]
  train_ratio = 0.7,

  # Palette : bleu = quantitatif, orange = qualitatif
  colors = list(
    quanti = "#2457D6",
    quali = "#D9822B",
    neutral = "#8A93A3"
  )
)
