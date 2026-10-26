# Données

## Données brutes (`raw/`, non publiées)
Les fichiers bruts sont trop volumineux pour GitHub (environ 1,9 million de lignes par an).

**Pour les obtenir :**
1. Aller sur la page [Open Medic : base complète sur les dépenses de médicaments interrégimes](https://www.data.gouv.fr/datasets/open-medic-base-complete-sur-les-depenses-de-medicaments-interregimes) (data.gouv.fr).
2. Télécharger les fichiers des années **2024** et **2025**.
3. Les placer dans `data/raw/` sous les noms `OPEN_MEDIC_2024.CSV` et `OPEN_MEDIC_2025.CSV`.

**Format :** séparateur `;`, encodage `latin-1`, virgule décimale et point pour les milliers (ex. `1.761,57`).

**Descriptif officiel des variables :** disponible sur le [site de l'Assurance Maladie](https://www.assurance-maladie.ameli.fr/etudes-et-donnees/open-medic-base-complete-depenses-medicaments).

## Données préparées (`clean/`, publiées)
Tableaux résumés produits par le notebook (section 8) et utilisés par le tableau de bord Power BI :
- `synthese_depenses.csv` : montants et boîtes par année, classe de médicament, âge, sexe, région et statut générique (8 287 lignes)
- `depenses_par_molecule.csv` : montants et boîtes par année et par molécule (2 336 lignes)