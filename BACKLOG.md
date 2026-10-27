# Backlog — Projet Shiny MLDS

Découpage du projet en tickets façon Jira.

**Légende**
- **Assigné** : **A** = pipeline données & ML · **B** = stats descriptives & visualisation · **A+B** = ensemble
- **Couche** : M = `models/` · V = `views/` · C = `controllers/` · — = outillage
- **Priorité** : 🔴 Must (exigé par le sujet) · 🟠 Should · 🟢 Could (bonus)
- **Points** : estimation en story points (1 = < 1 h · 2 = demi-journée · 3 = 1 jour · 5 = 2–3 jours · 8 = semaine)
- **Sprints** de 2 semaines : S0 (sem. 1) · S1 (sem. 2–3) · S2 (sem. 4–5) · S3 (sem. 6–7) · S4 (sem. 8–9) · S5 (sem. 10–11) · S6 (sem. 12–13)

---

## Vue d'ensemble

| ID | Titre | Epic | Assigné | Prio | Pts | Sprint |
|---|---|---|---|---|---|---|
| MLDS-01 | Installer renv et les packages | E0 | A | 🔴 | 1 | S0 |
| MLDS-02 | Chargeur `global.R` + `app.R` minimal | E0 | A | 🔴 | 2 | S0 |
| MLDS-03 | Fichier de configuration | E0 | B | 🔴 | 1 | S0 |
| MLDS-04 | Entité `dataset` (contrat commun) | E0 | A+B | 🔴 | 2 | S0 |
| MLDS-05 | Contrat `engine` des modèles | E0 | A | 🔴 | 2 | S0 |
| MLDS-06 | Mise en place des tests et du bac à sable | E0 | B | 🔴 | 1 | S0 |
| MLDS-07 | Premier déploiement shinyapps.io | E0 | A | 🔴 | 2 | S0 |
| MLDS-08 | README et conventions d'équipe | E0 | A+B | 🟠 | 1 | S0 |
| MLDS-10 | Lecteur CSV / TSV | E1 | A | 🔴 | 2 | S1 |
| MLDS-11 | Lecteur Excel | E1 | A | 🔴 | 1 | S1 |
| MLDS-12 | Repository de chargement | E1 | A | 🔴 | 1 | S1 |
| MLDS-13 | Détection automatique des types | E1 | B | 🔴 | 3 | S1 |
| MLDS-14 | Écran d'import | E1 | A | 🔴 | 3 | S1 |
| MLDS-15 | Tableau du schéma avec correction des types | E1 | A | 🔴 | 3 | S1 |
| MLDS-16 | Alertes qualité des données | E1 | A | 🟠 | 2 | S1 |
| MLDS-20 | Gestion des valeurs manquantes | E2 | A | 🔴 | 3 | S2 |
| MLDS-21 | Détection et traitement des outliers | E2 | A | 🔴 | 3 | S2 |
| MLDS-22 | Découpage train / test | E2 | A | 🔴 | 2 | S2 |
| MLDS-23 | Normalisation | E2 | A | 🔴 | 2 | S2 |
| MLDS-24 | Dummification | E2 | A | 🔴 | 3 | S2 |
| MLDS-25 | Rééquilibrage des classes | E2 | A | 🔴 | 3 | S3 |
| MLDS-26 | Pipeline de prétraitement sans fuite | E2 | A | 🔴 | 5 | S3 |
| MLDS-27 | Écran de prétraitement | E2 | A | 🔴 | 3 | S3 |
| MLDS-30 | Tableau statistique | E3 | B | 🔴 | 2 | S1 |
| MLDS-31 | Indicateurs de tendance et dispersion | E3 | B | 🔴 | 2 | S1 |
| MLDS-32 | Nombre de classes et discrétisation | E3 | B | 🔴 | 2 | S2 |
| MLDS-33 | Histogramme et densité | E3 | B | 🔴 | 3 | S2 |
| MLDS-34 | Boîte à moustaches et courbe cumulative | E3 | B | 🔴 | 2 | S2 |
| MLDS-35 | Diagrammes en colonnes et secteurs | E3 | B | 🔴 | 2 | S2 |
| MLDS-36 | Bloc d'analyse univariée | E3 | B | 🔴 | 3 | S2 |
| MLDS-40 | Liaison quanti × quanti | E4 | B | 🔴 | 2 | S2 |
| MLDS-41 | Liaison quanti × quali | E4 | B | 🔴 | 3 | S3 |
| MLDS-42 | Liaison quali × quali | E4 | B | 🔴 | 3 | S3 |
| MLDS-43 | Indice automatique et classement vs cible | E4 | B | 🟠 | 2 | S3 |
| MLDS-44 | Graphiques bivariés | E4 | B | 🔴 | 5 | S3 |
| MLDS-45 | Bloc d'analyse bivariée | E4 | B | 🔴 | 3 | S3 |
| MLDS-50 | Moteur régression logistique | E5 | A | 🔴 | 2 | S4 |
| MLDS-51 | Moteur Random Forest | E5 | A | 🔴 | 2 | S4 |
| MLDS-52 | Service d'entraînement | E5 | A | 🔴 | 3 | S4 |
| MLDS-53 | Écran de configuration des modèles | E5 | A | 🔴 | 3 | S4 |
| MLDS-54 | Validation croisée | E5 | A | 🟠 | 3 | S4 |
| MLDS-55 | 3ᵉ modèle (arbre de décision) | E5 | A | 🟢 | 2 | S5 |
| MLDS-60 | Matrice de confusion et métriques | E6 | A | 🔴 | 2 | S4 |
| MLDS-61 | Courbe ROC et AUC | E6 | A | 🔴 | 2 | S4 |
| MLDS-62 | Importance des variables | E6 | A | 🔴 | 2 | S5 |
| MLDS-63 | Graphiques des résultats | E6 | B | 🔴 | 3 | S4 |
| MLDS-64 | Bloc de comparaison des modèles | E6 | B | 🔴 | 3 | S5 |
| MLDS-65 | Seuil de décision ajustable | E6 | B | 🟢 | 2 | S5 |
| MLDS-70 | Composants d'interface réutilisables | E7 | B | 🔴 | 2 | S1 |
| MLDS-71 | Thème graphique et CSS | E7 | B | 🟠 | 2 | S1 |
| MLDS-72 | Formatage des nombres | E7 | B | 🟠 | 1 | S1 |
| MLDS-73 | Layout de la page | E7 | B | 🔴 | 2 | S2 |
| MLDS-74 | Contrôleur principal et état partagé | E7 | A+B | 🔴 | 3 | S2 |
| MLDS-75 | Gestion des erreurs utilisateur | E7 | A+B | 🔴 | 3 | S5 |
| MLDS-76 | Tests de robustesse multi-datasets | E7 | A+B | 🔴 | 3 | S5 |
| MLDS-80 | Choix et préparation du dataset d'étude | E8 | A+B | 🔴 | 2 | S0 |
| MLDS-81 | Rédaction de l'étude de cas | E8 | A+B | 🔴 | 5 | S6 |
| MLDS-82 | Déploiement final et rendu | E8 | A | 🔴 | 1 | S6 |

**Charge estimée** : A = 65 pts · B = 54 pts · ensemble = 19 pts (total 138 pts, 58 tickets).

---

## E0 · Socle technique

### MLDS-01 · Installer renv et les packages
`Couche —` · `A` · 🔴 · 1 pt · S0
Initialiser `renv` et installer les packages du projet pour que les deux postes et shinyapps.io aient les mêmes versions.
- [ ] `renv::init()` exécuté, `renv.lock` commité
- [ ] Packages installés : shiny, bslib, ggplot2, DT, readr, readxl, ranger, pROC, testthat
- [ ] Le camarade récupère l'environnement avec `renv::restore()`

### MLDS-02 · Chargeur `global.R` + `app.R` minimal
`Couche —` · `A` · 🔴 · 2 pts · S0 · dépend de MLDS-01
`global.R` charge les packages puis source `config/`, `models/`, `views/`, `controllers/` dans cet ordre ; `app.R` lance une page vide.
- [ ] Tous les `.R` des sous-dossiers sont chargés récursivement, dans l'ordre M → V → C
- [ ] `shiny::runApp()` affiche une page sans erreur

### MLDS-03 · Fichier de configuration
`Couche —` · `B` · 🔴 · 1 pt · S0
`config/config.R` centralise les constantes.
- [ ] Graine aléatoire, seuil IQR (1,5), seuil de suppression des NA (50 %), seuil « trop de modalités » (20)
- [ ] Palette : bleu = quantitatif, orange = qualitatif
- [ ] Aucune de ces valeurs n'est écrite en dur ailleurs

### MLDS-04 · Entité `dataset` (contrat commun)
`Couche M` · `A+B` · 🔴 · 2 pts · S0
`models/entities/dataset.R` : `new_dataset(data, schema, target)` + `validate_dataset()`. **À écrire ensemble en premier** : c'est l'objet que toutes les couches s'échangent.
- [ ] `schema` = data.frame `var / type / n_levels / n_missing`
- [ ] Erreur explicite si une variable du schéma ou la cible n'existe pas
- [ ] Test unitaire

### MLDS-05 · Contrat `engine` des modèles
`Couche M` · `A` · 🔴 · 2 pts · S0 · dépend de MLDS-04
`models/ml/engine_contract.R` : `new_engine(name, fit, predict_proba, importance)`.
- [ ] Validation : chaque champ est une fonction
- [ ] Un faux moteur de test (prédit toujours 0,5) est disponible pour les tests

### MLDS-06 · Mise en place des tests et du bac à sable
`Couche —` · `B` · 🔴 · 1 pt · S0
- [ ] `testthat::test_dir("tests/testthat")` passe
- [ ] `dev/sandbox.R` charge `models/` et montre un exemple d'appel de service

### MLDS-07 · Premier déploiement shinyapps.io
`Couche —` · `A` · 🔴 · 2 pts · S0 · dépend de MLDS-02
Déployer la page vide dès maintenant pour éviter les surprises de dernière minute.
- [ ] Compte shinyapps.io créé, `rsconnect` configuré
- [ ] URL publique fonctionnelle partagée avec le camarade

### MLDS-08 · README et conventions d'équipe
`Couche —` · `A+B` · 🟠 · 1 pt · S0
- [ ] Installation, lancement, déploiement
- [ ] Règles MVC (M sans Shiny, V sans calcul, C fait le lien)
- [ ] Workflow Git : branche par ticket `MLDS-xx-description`, PR relue par l'autre

---

## E1 · Chargement et schéma des données

### MLDS-10 · Lecteur CSV / TSV
`Couche M` · `A` · 🔴 · 2 pts · S1 · dépend de MLDS-04
`models/repositories/reader_csv.R` : `read_csv_file(path, sep, dec, header, na, encoding)`.
- [ ] Gère `,` `;` tabulation, décimale `.` ou `,`, en-tête oui/non
- [ ] Les chaînes NA personnalisées (ex. `?`, `unknown`) deviennent des `NA`
- [ ] Testé sur `bank-full.csv` (séparateur `;`)

### MLDS-11 · Lecteur Excel
`Couche M` · `A` · 🔴 · 1 pt · S1
`models/repositories/reader_excel.R` : `read_excel_file(path, sheet)`.
- [ ] Lit `.xlsx` et `.xls`, choix de la feuille

### MLDS-12 · Repository de chargement
`Couche M` · `A` · 🔴 · 1 pt · S1 · dépend de MLDS-10, MLDS-11, MLDS-13
`load_data(path, opts)` choisit le lecteur selon l'extension et renvoie un `dataset` complet (avec schéma).
- [ ] Erreur claire si l'extension n'est pas supportée

### MLDS-13 · Détection automatique des types
`Couche M` · `B` · 🔴 · 3 pts · S1 · dépend de MLDS-04
`models/services/types_service.R` : `detect_type()`, `build_schema()`, `n_levels()`.
- [ ] Classe chaque variable : quanti continue / quanti discrète / quali nominale / quali ordinale
- [ ] Règle : numérique avec ≤ 10 valeurs distinctes → proposée comme qualitative
- [ ] Une colonne identifiant (toutes valeurs distinctes) est signalée
- [ ] Tests sur des vecteurs simples

### MLDS-14 · Écran d'import
`Couche V + C` · `A` · 🔴 · 3 pts · S1 · dépend de MLDS-12
`views/partials/import_view.R` + `controllers/import_controller.R`.
- [ ] `fileInput` + options (séparateur, décimale, en-tête, encodage, NA)
- [ ] Bouton « Charger » (`eventReactive`) et bouton « Jeu d'exemple »
- [ ] Le contrôleur renvoie `reactive(dataset)`
- [ ] Aperçu des 10 premières lignes + nombre de lignes et colonnes

### MLDS-15 · Tableau du schéma avec correction des types
`Couche V + C` · `A` · 🔴 · 3 pts · S1 · dépend de MLDS-14
- [ ] Une ligne par variable : nom, type détecté, nb de modalités, nb de NA
- [ ] Le type est modifiable par l'utilisateur (ou « Ignorer la variable »)
- [ ] Sélection de la variable cible
- [ ] Le contrôleur renvoie le `dataset` avec le schéma corrigé

### MLDS-16 · Alertes qualité des données
`Couche M + V` · `A` · 🟠 · 2 pts · S1 · dépend de MLDS-15
- [ ] Alerte si > 20 modalités, si > 50 % de NA, si classe cible < 20 %, si variable constante
- [ ] Alertes affichées dans le tableau du schéma

---

## E2 · Prétraitement

### MLDS-20 · Gestion des valeurs manquantes
`Couche M` · `A` · 🔴 · 3 pts · S2
`missing_service.R` : `missing_summary()`, `impute_mean()`, `impute_median()`, `impute_mode()`, `drop_rows()`, `drop_vars(threshold)`.
- [ ] Résumé : nb et % de NA par variable
- [ ] Stratégie paramétrable par variable
- [ ] Les valeurs d'imputation sont calculées sur le train (cf. MLDS-26)
- [ ] Tests

### MLDS-21 · Détection et traitement des outliers
`Couche M` · `A` · 🔴 · 3 pts · S2
`outliers_service.R` : `iqr_bounds()`, `detect_outliers(method = "iqr" | "z")`, `winsorize()`.
- [ ] Règle de Tukey : hors de [Q1 − 1,5·IQ ; Q3 + 1,5·IQ]
- [ ] Actions : conserver, plafonner, supprimer
- [ ] Tests

### MLDS-22 · Découpage train / test
`Couche M` · `A` · 🔴 · 2 pts · S2
`split_service.R` : `train_test_split(data, target, ratio, seed, stratify = TRUE)`.
- [ ] Stratification sur la cible : même proportion de classes dans train et test
- [ ] Reproductible avec la graine

### MLDS-23 · Normalisation
`Couche M` · `A` · 🔴 · 2 pts · S2
`transform_service.R` : `fit_normalizer(train, method)` → `apply_normalizer(data, params)`.
- [ ] Méthodes : aucune, centrer-réduire (z), min-max
- [ ] Moyennes / écarts-types appris sur le train uniquement

### MLDS-24 · Dummification
`Couche M` · `A` · 🔴 · 3 pts · S2
`transform_service.R` : `fit_dummifier(train)` → `apply_dummifier(data, params)`.
- [ ] Encodage one-hot, modalité de référence retirée
- [ ] Option : regrouper les modalités < 1 % en « autre »
- [ ] Une modalité absente du train mais présente dans le test ne fait pas planter

### MLDS-25 · Rééquilibrage des classes
`Couche M` · `A` · 🔴 · 3 pts · S3
`balance_service.R` : `oversample()`, `undersample()`, `smote()`.
- [ ] Appliqué au **train uniquement**
- [ ] Affiche la répartition des classes avant / après

### MLDS-26 · Pipeline de prétraitement sans fuite
`Couche M` · `A` · 🔴 · 5 pts · S3 · dépend de MLDS-20 à MLDS-25
`prepare(dataset, config)` enchaîne : manquants → outliers → split → normalisation → dummies → rééquilibrage.
- [ ] Tous les paramètres sont appris sur le train et appliqués au test
- [ ] Renvoie `list(train, test, params, report)` où `report` résume chaque étape
- [ ] Test : la moyenne utilisée pour normaliser le test est celle du train

### MLDS-27 · Écran de prétraitement
`Couche V + C` · `A` · 🔴 · 3 pts · S3 · dépend de MLDS-26
- [ ] Un bloc par étape avec ses options
- [ ] Bouton « Appliquer » ; résumé avant / après (lignes, colonnes, répartition de la cible)
- [ ] Le contrôleur renvoie `reactive(prepared)`

---

## E3 · Analyse univariée

### MLDS-30 · Tableau statistique
`Couche M` · `B` · 🔴 · 2 pts · S1
`univar_service.R` : `freq_table(x)` → valeurs, nᵢ, Nᵢ, fᵢ, Fᵢ.
- [ ] Variable discrète : par valeur ; continue : par classe (avec bornes et centres)
- [ ] Qualitative ordinale : effectifs cumulés ; nominale : pas de cumul
- [ ] Tests sur l'exemple du cours (âges des 48 salariés)

### MLDS-31 · Indicateurs de tendance et dispersion
`Couche M` · `B` · 🔴 · 2 pts · S1
`desc_stats(x)` → moyenne, médiane, Q1, Q3, IQ, min, max, étendue, variance, écart-type, asymétrie, nb d'outliers.
- [ ] Variance en 1/n comme dans le cours
- [ ] Test : âges du cours → x̄ ≈ 43,6 ; s ≈ 10,5

### MLDS-32 · Nombre de classes et discrétisation
`Couche M` · `B` · 🔴 · 2 pts · S2
`n_classes(x, rule = "sturges" | "scott" | "fd")`, `discretize(x, k, method = "width" | "freq")`.
- [ ] Sturges : 1 + log₂(n) ; Scott : 3,5·σ·n^(−1/3) ; FD : 2·IQ·n^(−1/3)
- [ ] Médiane par interpolation linéaire pour les données groupées

### MLDS-33 · Histogramme et densité
`Couche V` · `B` · 🔴 · 3 pts · S2
`plots/univar_plots.R` : `plot_hist(x, rule, scale = "count" | "density", show_density)`.
- [ ] En densité, l'aire totale vaut 1
- [ ] Courbe de densité par noyau superposable
- [ ] Lignes de la moyenne et de la médiane

### MLDS-34 · Boîte à moustaches et courbe cumulative
`Couche V` · `B` · 🔴 · 2 pts · S2
`plot_box(x)`, `plot_ecdf(x)`.
- [ ] Outliers mis en évidence
- [ ] Courbe cumulative avec repère à 50 %

### MLDS-35 · Diagrammes en colonnes et secteurs
`Couche V` · `B` · 🔴 · 2 pts · S2
`plot_bar(x)`, `plot_pie(x)`.
- [ ] Modalités triées par effectif (sauf ordinale : ordre naturel)
- [ ] Étiquettes en effectif et en %

### MLDS-36 · Bloc d'analyse univariée
`Couche V + C` · `B` · 🔴 · 3 pts · S2 · dépend de MLDS-30 à MLDS-35
- [ ] Choix de la variable ; les graphiques s'adaptent au type
- [ ] Quanti : histogramme, boxplot, courbe cumulative, indicateurs, tableau
- [ ] Quali : colonnes / secteurs, tableau des fréquences

---

## E4 · Analyse bivariée

### MLDS-40 · Liaison quanti × quanti
`Couche M` · `B` · 🔴 · 2 pts · S2
`bivar_service.R` : `covariance()`, `pearson()`, `spearman()`, `regression()` (â, b̂).
- [ ] Formules du cours (covariance en 1/n)
- [ ] Test : â = s_XY / s²_X, b̂ = ȳ − â·x̄

### MLDS-41 · Liaison quanti × quali
`Couche M` · `B` · 🔴 · 3 pts · S3
`stats_by_group()`, `variance_decomposition()`, `correlation_ratio()`.
- [ ] Moyenne et écart-type par modalité
- [ ] s²_Y = s²_E + s²_R vérifié par un test
- [ ] Test : exemple chiens du cours → c ≈ 0,59

### MLDS-42 · Liaison quali × quali
`Couche M` · `B` · 🔴 · 3 pts · S3
`contingency()`, `chi2()`, `phi2()`, `tschuprow_t()`, `cramer_v()`.
- [ ] Table de contingence avec marges, profils-lignes et profils-colonnes
- [ ] Test : `housing × y` (bank) → C ≈ 0,139

### MLDS-43 · Indice automatique et classement vs cible
`Couche M` · `B` · 🟠 · 2 pts · S3 · dépend de MLDS-40 à MLDS-42
`assoc_auto(x, y)` choisit l'indice selon les types ; `rank_vs_target(dataset)` classe les variables.
- [ ] r (quanti × quanti), rapport de corrélation (quanti × quali), C de Cramér (quali × quali)

### MLDS-44 · Graphiques bivariés
`Couche V` · `B` · 🔴 · 5 pts · S3
`plots/bivar_plots.R` : `plot_scatter()` (+ droite), `plot_box_by()`, `plot_profiles()`, `plot_corr_matrix()`.
- [ ] Nuage échantillonné si n > 5 000 (lisibilité et vitesse)
- [ ] Matrice de corrélation des variables quantitatives en heatmap

### MLDS-45 · Bloc d'analyse bivariée
`Couche V + C` · `B` · 🔴 · 3 pts · S3 · dépend de MLDS-43, MLDS-44
- [ ] Choix de X et Y ; détection du couple de types
- [ ] Affiche le bon graphique et les bons indices
- [ ] Matrice de corrélation et classement vs cible

---

## E5 · Modélisation

### MLDS-50 · Moteur régression logistique
`Couche M` · `A` · 🔴 · 2 pts · S4 · dépend de MLDS-05
`engine_logreg()` basé sur `glm(family = binomial)`.
- [ ] Respecte le contrat `engine`
- [ ] `importance` = |coefficients standardisés|

### MLDS-51 · Moteur Random Forest
`Couche M` · `A` · 🔴 · 2 pts · S4 · dépend de MLDS-05
`engine_rf(ntree, mtry)` basé sur `ranger`.
- [ ] `probability = TRUE`, `importance = "permutation"`

### MLDS-52 · Service d'entraînement
`Couche M` · `A` · 🔴 · 3 pts · S4 · dépend de MLDS-26, MLDS-50, MLDS-51
`train_models(prepared, engines)` → liste de `model_result`.
- [ ] Entraîne chaque moteur sur le même train
- [ ] Stocke les probabilités prédites sur le test
- [ ] Ajouter un moteur = ajouter un élément à la liste, sans autre modification

### MLDS-53 · Écran de configuration des modèles
`Couche V + C` · `A` · 🔴 · 3 pts · S4 · dépend de MLDS-52
- [ ] Choix des modèles et de leurs hyperparamètres
- [ ] Bouton « Entraîner » avec barre de progression (`withProgress`)

### MLDS-54 · Validation croisée
`Couche M` · `A` · 🟠 · 3 pts · S4
- [ ] k blocs stratifiés sur le train ; moyenne et écart-type de l'AUC par modèle

### MLDS-55 · 3ᵉ modèle (arbre de décision)
`Couche M` · `A` · 🟢 · 2 pts · S5
- [ ] `engine_tree()` basé sur `rpart`, ajouté sans modifier le reste du code

---

## E6 · Évaluation et résultats

### MLDS-60 · Matrice de confusion et métriques
`Couche M` · `A` · 🔴 · 2 pts · S4
`evaluation_service.R` : `confusion()`, `accuracy()`, `precision()`, `recall()`, `f_score()`.
- [ ] Classe positive paramétrable, seuil paramétrable
- [ ] Tests sur une petite matrice calculée à la main

### MLDS-61 · Courbe ROC et AUC
`Couche M` · `A` · 🔴 · 2 pts · S4
`roc_points()`, `auc()`.
- [ ] AUC vérifiée contre `pROC::auc()`

### MLDS-62 · Importance des variables
`Couche M` · `A` · 🔴 · 2 pts · S5 · dépend de MLDS-52
`get_importance(model_result)` → data.frame trié `variable / importance` normalisé à 100.

### MLDS-63 · Graphiques des résultats
`Couche V` · `B` · 🔴 · 3 pts · S4
`plots/models_plots.R` : `plot_roc()` (modèles superposés), `plot_confusion()`, `plot_importance(top = 10)`.
- [ ] Modèles distingués par couleur **et** type de trait

### MLDS-64 · Bloc de comparaison des modèles
`Couche V + C` · `B` · 🔴 · 3 pts · S5 · dépend de MLDS-60 à MLDS-63
- [ ] Tableau Accuracy / Precision / Recall / F-score / AUC, meilleur score mis en évidence
- [ ] ROC superposées, matrices de confusion, importance des variables
- [ ] Export du tableau en CSV

### MLDS-65 · Seuil de décision ajustable
`Couche V + C` · `B` · 🟢 · 2 pts · S5
- [ ] Curseur de seuil ; métriques et matrices recalculées en direct

---

## E7 · Interface et intégration

### MLDS-70 · Composants d'interface réutilisables
`Couche V` · `B` · 🔴 · 2 pts · S1
`views/components/` : `card_ui()`, `kpi_ui()`, `metric_ui()`, `alert_ui()`.
- [ ] Utilisables par n'importe quel bloc, sans logique métier

### MLDS-71 · Thème graphique et CSS
`Couche V` · `B` · 🟠 · 2 pts · S1
- [ ] `theme_app()` ggplot commun, palette de `config.R`
- [ ] `www/styles.css` + thème `bslib`

### MLDS-72 · Formatage des nombres
`Couche V` · `B` · 🟠 · 1 pt · S1
- [ ] `fmt_num()` et `fmt_pct()` au format français (espace des milliers, virgule décimale)

### MLDS-73 · Layout de la page
`Couche V` · `B` · 🔴 · 2 pts · S2
`views/layout.R` : `main_ui()` assemble les blocs sur une page unique (pas d'onglets pour l'instant).

### MLDS-74 · Contrôleur principal et état partagé
`Couche C` · `A+B` · 🔴 · 3 pts · S2
`controllers/app_controller.R` : `main_server()` branche import → schéma → prétraitement → analyses → modèles.
- [ ] Chaque contrôleur reçoit et renvoie des `reactive`
- [ ] La liste des moteurs est définie à un seul endroit

### MLDS-75 · Gestion des erreurs utilisateur
`Couche C` · `A+B` · 🔴 · 3 pts · S5
- [ ] `validate()` / `need()` : pas de cible choisie, fichier illisible, variable incompatible…
- [ ] Messages clairs en français, l'application ne plante jamais

### MLDS-76 · Tests de robustesse multi-datasets
`Couche —` · `A+B` · 🔴 · 3 pts · S5
L'application doit « charger tout type de données ».
- [ ] Testée sur 3 jeux : Bank Marketing, Titanic (NA + mixte), Iris (cible multi-classe → message clair ou binarisation)
- [ ] Liste des bugs trouvés transformée en tickets

---

## E8 · Étude de cas et livraison

### MLDS-80 · Choix et préparation du dataset d'étude
`Couche —` · `A+B` · 🔴 · 2 pts · S0
- [ ] Dataset choisi (recommandé : Bank Marketing UCI) et placé dans `data/`
- [ ] Source et description des variables notées dans le README

### MLDS-81 · Rédaction de l'étude de cas
`Couche V` · `A+B` · 🔴 · 5 pts · S6
Étude complète menée **avec l'interface**.
- [ ] Contexte, choix de prétraitement justifiés
- [ ] Principaux résultats univariés et bivariés
- [ ] Comparaison des modèles, variables importantes, conclusion

### MLDS-82 · Déploiement final et rendu
`Couche —` · `A` · 🔴 · 1 pt · S6
- [ ] Version finale déployée et testée depuis un autre ordinateur
- [ ] URL saisie dans le fichier des groupes avant la date limite
