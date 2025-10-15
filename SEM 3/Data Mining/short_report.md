# Short Report: Decision Tree vs Naïve Bayes (Iris)

Date: 2025-10-15 19:43:50

## Dataset

- Used uploaded CSV: `iris-2.csv`.

- Classes: ['setosa', 'versicolor', 'virginica']


## Model Evaluation (10-fold CV on full data)

- Naïve Bayes: Acc=0.953, Prec=0.953, Rec=0.953, F1=0.953

- Decision Tree (entropy): Acc=0.933, Prec=0.934, Rec=0.933, F1=0.933


## Holdout Split (70/30 stratified)

- Naïve Bayes: Acc=0.911, Prec=0.916, Rec=0.911, F1=0.911, Macro-AUC=0.989

- Decision Tree (entropy): Acc=0.889, Prec=0.890, Rec=0.889, F1=0.889, Macro-AUC=0.917


## Interpretability

- Decision Tree provides a visual hierarchy of splits; we also exported its path-based IF–THEN rules (see `rules_from_tree.txt` / `rules_screenshot.png`).

- Naïve Bayes offers simple probabilistic reasoning with class-conditional likelihoods and the strong (often violated) feature-independence assumption.


## When to Use Which

- **Rule/Tree-based**: when interpretability and human-readable logic is key; can capture non-linear, interaction-heavy patterns but may overfit without pruning.

- **Naïve Bayes**: when features are roughly independent or high-dimensional/sparse (e.g., text); fast, robust with small data, but decision boundaries can be simplistic.


## Optional Bootstrap (NB on resampled data)

- Bootstrapped accuracy mean=0.957 (std=0.006) over B=200 resamples.


## Top Splitting Features (entropy tree)

- petal_length: 0.623

- petal_width: 0.337

- sepal_length: 0.028

- sepal_width: 0.012
