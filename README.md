# Explorateur ML — projet R Shiny (Master MLDS)

Application R Shiny d'exploration de données (statistique descriptive uni- et bivariée)
et de classification supervisée, avec une étude de cas complète.

- Backlog : [BACKLOG.md](BACKLOG.md) et Jira (projet `mlsd`, clé `SCRUM`)
- Dépôt : https://github.com/samych26/DevWebML

---

## Installation

1. Cloner le dépôt et ouvrir `projetMlsd.Rproj` dans RStudio.
2. `renv` s'active automatiquement à l'ouverture. Installer les packages du projet :
   ```r
   renv::restore()
   ```
3. Après avoir installé un nouveau package, mettre à jour le lockfile et le commiter :
   ```r
   renv::snapshot()
   ```
   Penser aussi à l'ajouter dans `dependencies.R`.

## Lancer l'application

```r
shiny::runApp()
```

## Lancer les tests

```r
testthat::test_dir("tests/testthat")
```

Les tests portent sur la couche `models/` (aucun Shiny nécessaire).
Pour essayer les fonctions dans la console : ouvrir et exécuter `dev/sandbox.R`.

## Déployer sur shinyapps.io

1. Une seule fois par poste : sur shinyapps.io, menu **Account > Tokens**, cliquer **Show**
   et coller la commande `rsconnect::setAccountInfo(...)` dans la console.
   **Ne jamais commiter ce token.**
2. Déployer :
   ```r
   source("dev/deploy.R")
   ```

---

## Architecture MVC

```
views/  ◄──  controllers/  ──►  models/
(affiche)     (orchestre)        (calcule)
```

| Couche | Dossier | Règle |
|---|---|---|
| **Model** | `models/` | Calculs et règles métier. **Aucun code Shiny** (`input$`, `reactive`, `render*` interdits). |
| **View** | `views/` | Interface et graphiques. **Ne calcule rien** : reçoit des valeurs ou des ggplot. |
| **Controller** | `controllers/` | Seule couche qui lit `input$`, appelle `models/` et remplit les sorties de `views/`. |

Shiny ne charge pas automatiquement les sous-dossiers : `global.R` utilise `source_layers()`
(défini dans `loader.R`) pour charger `config/`, `models/`, `views/` puis `controllers/`.

```
projetMlsd/
├── app.R               # point d'entrée
├── global.R            # packages + chargement des couches
├── loader.R            # source_layers()
├── dependencies.R      # liste des packages pour renv
├── config/config.R     # constantes (graine, seuils, couleurs)
├── models/
│   ├── entities/       # dataset.R (objet commun), model_result.R
│   ├── repositories/   # lecture des fichiers
│   ├── services/       # stats, types, prétraitement
│   └── ml/             # contrat engine, moteurs, entraînement, évaluation
├── views/
│   ├── layout.R        # page principale
│   ├── components/     # cartes, KPI, alertes réutilisables
│   ├── partials/       # blocs d'écran
│   └── plots/          # fonctions qui renvoient des ggplot
├── controllers/        # modules server
├── tests/testthat/     # tests de la couche M
├── dev/                # sandbox.R, deploy.R
├── www/                # CSS, images
└── data/               # jeu de données de l'étude de cas
```

### Contrats communs

- **`new_dataset(data, schema, target)`** (`models/entities/dataset.R`) : l'objet que toutes
  les couches s'échangent. `schema` contient une ligne par variable : `var`, `type`,
  `n_levels`, `n_missing`. Types autorisés : `quanti_continue`, `quanti_discrete`,
  `quali_nominale`, `quali_ordinale`, `ignoree`.
- **`new_engine(name, fit, predict_proba, importance)`** (`models/ml/engine_contract.R`) :
  tout modèle de classification respecte ce contrat. Ajouter un modèle = écrire une
  fonction `engine_xxx()` qui renvoie `new_engine(...)`.

### Conventions de code

- `snake_case` partout, commentaires en français.
- Aucune constante en dur : tout passe par `APP_CONFIG` (`config/config.R`).
- Chaque fonction de `models/` a au moins un test.

---

## Travailler à deux avec Git

- **`main` doit toujours fonctionner** : on ne pousse jamais directement dessus.
- **Une branche par ticket** : `MLDS-13-detection-types`, `MLDS-21-outliers`…
- **Une Pull Request relue par l'autre** avant chaque fusion.
- `git pull` sur `main` avant de commencer, commits petits et fréquents.
- `global.R`, `loader.R` et `controllers/app_controller.R` sont partagés : prévenir l'autre avant de les modifier.
