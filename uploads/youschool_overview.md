# YouSchool – CAP Céramiste : Documentation de l'interface

> **Plateforme d'e-learning** pour la formation CAP Céramiste.  
> URL : https://youschool.io/cap_ceramiste  
> Date de capture : 22 juin 2026

---

## Table des matières

1. [Structure générale](#1-structure-générale)
2. [Accueil – Fil d'actualité](#2-accueil--fil-dactualité)
3. [Tableau de bord](#3-tableau-de-bord)
4. [Ma formation](#4-ma-formation)
   - [Mes cours – Vue parcours](#41-mes-cours--vue-parcours)
   - [Mes cours – Vue sommaire](#42-mes-cours--vue-sommaire)
   - [Liste des cours d'un niveau](#43-liste-des-cours-dun-niveau)
   - [Page de cours (contenu + échanges)](#44-page-de-cours-contenu--échanges)
   - [Page de cours – Bloc-Notes](#45-page-de-cours--bloc-notes)
   - [Mes entraînements (Quiz)](#46-mes-entraînements-quiz)
   - [Mes annexes](#47-mes-annexes)
   - [Mes listes](#48-mes-listes)
   - [Mes vidéos](#49-mes-vidéos)
5. [Informations officielles](#5-informations-officielles)
6. [Agenda](#6-agenda)
7. [Défis](#7-défis)
   - [Liste des défis](#71-liste-des-défis)
   - [Détail d'un défi](#72-détail-dun-défi)
8. [Groupes](#8-groupes)
   - [Liste des groupes](#81-liste-des-groupes)
   - [Page d'un groupe](#82-page-dun-groupe)
9. [Profil utilisateur](#9-profil-utilisateur)
10. [Éléments transversaux](#10-éléments-transversaux)
    - [Barre de navigation supérieure](#101-barre-de-navigation-supérieure)
    - [Recherche](#102-recherche)
    - [Notifications d'école](#103-notifications-décole)
    - [Menu utilisateur](#104-menu-utilisateur)

---

## 1. Structure générale

L'interface se compose de trois zones principales :

- **Sidebar gauche (fixe)** : navigation principale entre les grandes sections. Contient aussi les liens "Assistance & contact", "Questions fréquentes", et "Conditions générales".
- **Barre supérieure** : logo, barre de recherche, bouton "Reprendre mon cours", notifications d'école (🔔), notifications communauté (🌐), et menu utilisateur.
- **Zone de contenu centrale** : affichage de la section sélectionnée.

**Sections de navigation :**
| Icône | Libellé | Description |
|-------|---------|-------------|
| 🏠 | Accueil | Fil d'actualité de la formation |
| 📊 | Tableau de bord | Résumé de la progression |
| 📚 | Ma formation | Cours, quiz, annexes, listes, vidéos |
| 📋 | Infos officielles | Annonces institutionnelles |
| 📅 | Agenda | Calendrier des événements |
| 🏆 | Défis | Exercices et examens blancs |
| 👥 | Groupes | Espaces de discussion thématiques |

---

## 2. Accueil – Fil d'actualité

![Accueil – Fil d'actualité](screenshots/01_accueil_feed.png)

**URL :** `/cap_ceramiste`

Le fil d'actualité fonctionne comme un réseau social interne à la formation :

- **Publication** : zone de saisie "Écrire une publication" en haut pour poster un message.
- **Filtrer les publications** : bouton permettant de filtrer le contenu affiché.
- **Posts** : les publications des professeurs (badge "Professeur") et des élèves s'affichent en flux chronologique inverse. Elles peuvent contenir des liens externes avec aperçu (open graph), des images, des tags de région.
- **Interactions** : menu "..." sur chaque post pour options supplémentaires.

---

## 3. Tableau de bord

![Tableau de bord – Haut](screenshots/02_dashboard_top.png)

![Tableau de bord – Bas](screenshots/03_dashboard_bottom.png)

**URL :** `/cap_ceramiste/dashboard`

Le tableau de bord agrège les informations clés en un seul coup d'œil :

### Section "Mon parcours"
Stepper horizontal guidant l'élève dans sa prise en main :
1. **Découverte** – Ouvrir son premier cours
2. **Photo de profil** – Ajouter une image
3. **Publication** *(actif)* – Publier dans un cours ou sur le fil

### Section "À la une" (3 cartes)
| Carte | Contenu |
|-------|---------|
| Prochain rendez-vous | Prochain événement du calendrier avec bouton "J'y accède" |
| Publication du prof. | Dernière publication de l'enseignant avec bouton "Voir le message" |
| Dernier défi | Dernier défi actif avec son statut et bouton "Voir le défi" |

### Section "Activité" (3 indicateurs)
| Indicateur | Donnée |
|-----------|--------|
| Série de la semaine | Nombre de jours consécutifs de formation (streak) + calendrier semaine |
| Progression des cours essentiels | Pourcentage d'avancement sur les cours marqués #Essentiel |
| Nombre de publications | Compteur + bouton "Publier" |

---

## 4. Ma formation

### 4.1 Mes cours – Vue parcours

![Mes cours – Vue parcours](screenshots/04_mes_cours_vue_parcours.png)

**URL :** `/cap_ceramiste/training/courses/cursus`

Grille de tuiles représentant les **blocs de formation** :
- **Let's GO** (introduction)
- **Niveau 1 à 5** (progression pédagogique)
- **Annales** (sujets d'examen)
- **Bonus** (contenu complémentaire : organisation, décoration, etc.)

Chaque tuile affiche le **ratio de cours complétés** (ex : "3 / 15 cours"). Un panneau latéral droit propose un raccourci "Continuer mon parcours".

Deux vues disponibles (boutons en haut à droite) : **Vue parcours** | **Vue sommaire**

---

### 4.2 Mes cours – Vue sommaire

![Mes cours – Vue sommaire](screenshots/05_mes_cours_vue_sommaire.png)

**URL :** `/cap_ceramiste/training/courses/summary`

Table des matières accordion organisée par **blocs de compétences** :
- Introduction à la formation
- Bloc 1 – Communication esthétique et technologie
  - Les fondamentaux du métier
  - Introduction aux techniques et processus de fabrication
  - Préparation de la terre et des matériaux
  - Histoire de la céramique
  - Connaissance des matériaux
  - Outils et équipements
  - Dessin technique
  - *(etc.)*

Chaque ligne est cliquable pour naviguer directement vers un sous-module.

---

### 4.3 Liste des cours d'un niveau

![Liste des cours – Niveau 1](screenshots/06_niveau1_course_list.png)

**URL :** `/cap_ceramiste/training/courses/cursus/phases/{id}`

Liste de tous les cours d'un niveau avec :
- **Titre** et **sous-titre** (matière concernée)
- **Hashtag** de type (#Essentiel, #Bonus)
- **Badge de statut** : "Terminé" (vert), "Non lu" (gris)
- **Flèche de navigation** pour accéder au cours

**Panneau droit "Filtrer par" :**
- Type (Tous / filtre)
- Statut (Tous / filtre)
- Options toggle : Prise de note | Quiz | Évaluation

---

### 4.4 Page de cours (contenu + échanges)

![Page de cours – Échanges](screenshots/07_course_detail_echanges.png)

**URL :** `/cap_ceramiste/training/courses/cursus/phases/{id}/lessons/{id}/chapter/{id}/publications`

Interface en trois colonnes :

**Colonne gauche – Panneau de cours :**
- Fil d'ariane du niveau (ex : "Niveau 1")
- Titre du cours et du chapitre courant
- Barre de progression ("3/15 cours")
- Bouton **"Marquer comme acquis"** (CTA vert)
- OPTIONS : Ajouter à la liste | Plein écran
- SUGGESTION : Faire une suggestion | Signaler une erreur
- PLAN DU COURS : liste cliquable des chapitres du cours

**Colonne centrale – Contenu :**
- **Lecteur vidéo** (avec miniature, durée, bouton play)
- Flèches ← → pour naviguer entre les chapitres
- Section "Compétences évaluées" (accordion)
- **Contenu textuel** : titres, paragraphes, images, listes
- Bouton **"Fermer le cours"** (haut gauche)

**Colonne droite – Onglet Échanges :**
- Zone de publication "Écrire une publication"
- Fil de posts des élèves et professeurs liés à ce cours
- Photos partagées dans les échanges
- Badge "Profs notifiés" pour les publications visibles par l'enseignant

---

### 4.5 Page de cours – Bloc-Notes

![Page de cours – Bloc-Notes](screenshots/08_course_detail_bloc_notes.png)

**URL :** `/cap_ceramiste/training/courses/.../{id}/note`

Onglet alternatif dans la colonne droite de la page de cours :
- Zone de texte libre : "Prenez des notes..."
- Les notes sont liées au cours en cours de visualisation

---

### 4.6 Mes entraînements (Quiz)

![Mes entraînements](screenshots/09_mes_entrainements.png)

**URL :** `/cap_ceramiste/training/test-exams`

Agrégateur de tous les quiz débloqués pendant la formation :
- **2 KPIs** en haut : "Quiz réalisés" / "Quiz à débloquer"
- **Raccourci** "Reprendre mon cours"
- **Grille de quiz** : titre, cours associé, niveau, nombre de questions, bouton "Commencer"

Les quiz se débloquent au fur et à mesure de la progression dans les cours.

---

### 4.7 Mes annexes

![Mes annexes](screenshots/10_mes_annexes.png)

**URL :** `/cap_ceramiste/training/appendixes/folders`

Bibliothèque de documents organisée en **dossiers thématiques** (grille de tuiles) :
| Dossier | Contenu |
|---------|---------|
| Documents introductifs | 0/10 annexes |
| Les stages | 0/6 annexes |
| L'examen | 0/2 annexes |
| L'essentiel de l'apprentissage | 0/6 annexes |
| Fiches pratique apprentissage | 0/14 annexes |
| Accompagnement handicap | 0/5 annexes |

---

### 4.8 Mes listes

![Mes listes](screenshots/11_mes_listes.png)

**URL :** `/cap_ceramiste/training/lesson-lists`

Outil de curation personnelle :
- Bouton **"Créer une liste +"** (haut droite + tuile centrale)
- Permet à l'élève de créer des listes thématiques de cours à revoir
- Vide par défaut, se remplit via le bouton "Ajouter à la liste" dans les cours

---

### 4.9 Mes vidéos

![Mes vidéos](screenshots/12_mes_videos.png)

**URL :** `/cap_ceramiste/training/videos`

Galerie de toutes les vidéos débloquées :
- **Grille 2 colonnes** avec miniature vidéo
- Titre, module d'appartenance (ex : "Let's GO")
- Durée (ex : 02:05)
- Bouton **"Lecture"** pour rejouer la vidéo indépendamment du cours

---

## 5. Informations officielles

![Informations officielles](screenshots/13_infos_officielles.png)

**URL :** `/cap_ceramiste/articles`

Flux d'annonces institutionnelles de l'école :
- **Section "À la une"** : cartes d'articles avec image de couverture "Info officielle", titre et bouton "Lire la suite"
- Exemples : "Votre référente handicap", "Le menu mobile fait peau neuve"

---

## 6. Agenda

![Agenda](screenshots/14_agenda.png)

**URL :** `/cap_ceramiste/events`

Calendrier complet avec trois vues :

| Vue | Description |
|-----|-------------|
| **Jour** | Détail des créneaux du jour |
| **Semaine** | Vue par défaut – mini calendrier + timeline hebdomadaire |
| **Mois** | Vue mensuelle |

La vue Semaine affiche :
- Mini-calendrier mensuel avec points sur les jours avec événements
- Section "À ne pas louper" (événements importants)
- Timeline de la semaine avec les créneaux colorés par type

**Types d'événements observés :**
- 🔵 Permanence du prof (récurrente : lundi/mardi/vendredi)
- 🟣 Mise à jour technique / Service

---

## 7. Défis

### 7.1 Liste des défis

![Défis – Liste](screenshots/15_defis_list.png)

**URL :** `/cap_ceramiste/challenges`

Grille de cartes de défis :
- Filtre "Tous les défis" (dropdown)
- Compteur de résultats
- Deux types visuels de défi :
  - 🟡 **Exercices** (fond jaune, icône crayon/check)
  - 🟢 **Examen blanc** (fond vert, icône fusée)
- Chaque carte : image d'accroche, titre, auteur (avatar), niveau, badge de statut ("En cours")

---

### 7.2 Détail d'un défi

![Défi – Détail](screenshots/16_defi_detail.png)

**URL :** `/cap_ceramiste/challenges/{id}`

Page de présentation d'un défi :
- **Bannière** avec image du type de défi + avatar et nom du professeur, niveau, statut
- **Contenu** : titre de l'exercice, description pédagogique, consignes
- Exercice illustré (images de pièces céramiques + tableau d'association)

---

## 8. Groupes

### 8.1 Liste des groupes

![Groupes – Liste](screenshots/17_groupes_list.png)

**URL :** `/cap_ceramiste/groups`

Espaces de discussion thématiques organisés en grille :
- Filtre "Tous les groupes" (dropdown)
- Bouton **"+ Créer un groupe"**
- Chaque carte : image, badge de catégorie (ex : "Offres et recherches de stage", "Promo 2026"), titre, date de dernière mise à jour, description courte

**Groupes existants :**
- Offres et recherche de stage
- Apprentis CFA
- Examen 2026
- Bonnes combines et astuces diverses en céramique
- *(+ autres)*

---

### 8.2 Page d'un groupe

![Groupe – Détail](screenshots/18_groupe_detail.png)

**URL :** `/cap_ceramiste/groups/{id}`

Page de présentation d'un groupe :
- Grande image de bannière + badge de catégorie
- Avatar et nom du groupe
- Bouton **"Rejoindre"**
- Description du groupe
- Liste des membres/administrateurs

---

## 9. Profil utilisateur

![Profil utilisateur](screenshots/19_profil.png)

**URL :** `/cap_ceramiste/profile/{id}`

Page de profil personnel :
- **En-tête** : photo de profil, nom, compteurs abonnés/publications, bouton "Réseaux"
- Bouton **"Paramètres"** (haut droite)
- **Stepper "Complétez votre profil"** (3 étapes) :
  1. Personnalisez (photo)
  2. Expérience, projet – Écrivez une courte bio *(étape active)*
  3. Publiez – Faites votre première publication
- **Biographie** : zone de bio avec bouton "Ajouter une biographie"
- **Galerie photo** : alimentée par les publications avec médias

---

## 10. Éléments transversaux

### 10.1 Barre de navigation supérieure

Toujours visible en haut de l'interface :

| Élément | Fonction |
|---------|----------|
| Logo YouSchool | Retour accueil |
| 🔍 Rechercher | Barre de recherche globale |
| ▶ Reprendre mon cours | Accès direct au dernier cours consulté (titre visible) |
| 🔔 (avec badge) | Notifications d'école |
| 🌐 | Notifications communauté |
| Avatar + nom | Menu utilisateur (profil, changer de formation, déconnexion) |

---

### 10.2 Recherche

![Recherche](screenshots/20_search.png)

La recherche est **globale et temps réel**, retournant des résultats catégorisés :

| Catégorie | Exemples |
|-----------|---------|
| **Cours** | Titres de cours avec hashtag (#Bonus, #Essentiel) |
| **Annexes** | Documents joints à la formation |
| **Informations officielles** | Articles institutionnels |
| **Publications** | Posts du fil d'actualité avec avatar et date |

---

### 10.3 Notifications d'école

![Notifications](screenshots/21_notifications.png)

Panneau déroulant accessible via l'icône 🔔 :
- Titre "Notifications d'école"
- Liste de notifications avec avatar, type d'événement en gras (ex : "Nouveau défi en cours : **Histoire de la céramique 2**")

---

### 10.4 Menu utilisateur

![Menu utilisateur](screenshots/22_user_menu.png)

Panneau déroulant accessible via l'avatar :
- Nom + formation actuelle (CAP Céramiste)
- **Voir mon profil** (lien)
- **Mon espace élève**
- **Changer de formation** (pour les élèves multi-formations)
- **Déconnexion**

---

## Résumé de l'architecture fonctionnelle

```
YouSchool – CAP Céramiste
├── Accueil (fil d'actualité social)
├── Tableau de bord (progression + highlights)
├── Ma formation
│   ├── Mes cours
│   │   ├── Vue parcours (tuiles par niveau)
│   │   └── Vue sommaire (table des matières)
│   │       └── [Niveau] → [Cours] → [Chapitre]
│   │           ├── Contenu (vidéo + texte)
│   │           ├── Échanges (fil de discussion)
│   │           └── Bloc-Notes (notes personnelles)
│   ├── Mes entraînements (quiz par cours)
│   ├── Mes annexes (documents par thème)
│   ├── Mes listes (curation personnelle)
│   └── Mes vidéos (galerie des vidéos débloquées)
├── Infos officielles (annonces école)
├── Agenda (calendrier des événements)
├── Défis (exercices + examens blancs)
└── Groupes (espaces de discussion thématiques)
```

---

*Document généré le 22/06/2026 – YouSchool CAP Céramiste*
