<!-- docs/backlog.md -->
# Backlog Brikoo

Projet Jira : BRK. Une ligne par ticket ; le détail (critères d'acceptation, Definition of
Done) est dans le ticket lui-même. Types : Story, Bug, Tech, Spike, Incident, Epic.

## Sprint 0 — Mise en place

| Clé     | Type  | Titre                                                   | Statut   |
|---------|-------|---------------------------------------------------------|----------|
| BRK-1   | Spike | Lire la vision produit et les principes d'ingénierie    | Done     |
| BRK-101 | Tech  | Environnement de dev reproductible                      | Done     |
| BRK-102 | Tech  | Lancer les tests en une commande                        | Done     |
| BRK-103 | Tech  | Backlog et modèles de tickets                           | En cours |

## Sprint 1 — Le catalogue prend forme

| Clé     | Type  | Titre                                                   | Statut   |
|---------|-------|---------------------------------------------------------|----------|
| BRK-110 | Bug   | Un vendeur voit un prix de 19,989999 €                  | À faire  |
| BRK-111 | Story | Valider SKU et nom de produit                           | À faire  |
| BRK-112 | Tech  | Identifiants uniques triables                           | À faire  |
| BRK-120 | Story | Un vendeur crée un brouillon de produit                 | À faire  |
| BRK-121 | Story | URLs produits lisibles (slugs)                          | À faire  |
| BRK-122 | Tech  | Politique de retry                                      | À faire  |
| BRK-123 | Spike | Évaluer PHP 8.6                                         | À faire  |
| BRK-130 | Tech  | Garde-fous qualité                                      | À faire  |

## Conventions

- Branche : feature/BRK-xxx-slug (ou fix/BRK-xxx-slug pour un bug).
- Commit : Conventional Commits, avec la clé du ticket entre parenthèses à la fin,
  par exemple : feat(cart): limit cart to 30 lines (BRK-151).
- Un ticket est Done quand sa Definition of Done est entièrement cochée.