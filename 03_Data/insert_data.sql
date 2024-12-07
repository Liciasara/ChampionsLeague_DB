-- Insertion des pays
INSERT INTO Pays (ID_Pays, Nom, Continent) VALUES
(1, 'France', 'Europe'),
(2, 'Espagne', 'Europe'),
(3, 'Allemagne', 'Europe'),
(4, 'Angleterre', 'Europe'),
(5, 'Italie', 'Europe');

-- Insertion des saisons
INSERT INTO Saisons (ID_Saison, Annee_Debut, Annee_Fin) VALUES
(1, 2023, 2024),
(2, 2022, 2023),
(3, 2021, 2022);

-- Insertion des groupes
INSERT INTO Groupes (ID_Groupe, Nom) VALUES
(1, 'Groupe A'),
(2, 'Groupe B'),
(3, 'Groupe C'),
(4, 'Groupe D');

-- Insertion des phases
INSERT INTO Phases (ID_Phase, Nom) VALUES
(1, 'Phase de groupes'),
(2, 'Huitièmes de finale'),
(3, 'Quarts de finale'),
(4, 'Demi-finales'),
(5, 'Finale');

-- Insertion des équipes
INSERT INTO Equipes (ID_Equipe, Nom, ID_Pays, Annee_Creation, Logo) VALUES
(1, 'Paris Saint-Germain', 1, 1970, NULL),
(2, 'Real Madrid', 2, 1902, NULL),
(3, 'Bayern Munich', 3, 1900, NULL),
(4, 'Manchester City', 4, 1894, NULL),
(5, 'Juventus', 5, 1897, NULL);

-- Insertion des joueurs
INSERT INTO Joueurs (ID_Joueur, Nom, Prenom, Date_Naissance, ID_Pays, Poste) VALUES
(1, 'Mbappé', 'Kylian', TO_DATE('20-12-1998', 'DD-MM-YYYY'), 1, 'Attaquant'),
(2, 'Bellingham', 'Jude', TO_DATE('29-06-2003', 'DD-MM-YYYY'), 4, 'Milieu'),
(3, 'Kane', 'Harry', TO_DATE('28-07-1993', 'DD-MM-YYYY'), 4, 'Attaquant');

-- Insertion des entraineurs
INSERT INTO Entraineurs (ID_Entraineur, Nom, Prenom, ID_Pays) VALUES
(1, 'Luis Enrique', 'Martinez', 2),
(2, 'Ancelotti', 'Carlo', 5),
(3, 'Tuchel', 'Thomas', 3);

-- Insertion des sponsors
INSERT INTO Sponsors (ID_Sponsor, Nom, Type) VALUES
(1, 'Adidas', 'Équipementier'),
(2, 'Emirates', 'Compagnie aérienne'),
(3, 'Nike', 'Équipementier');


-- Insertion Equipes_Saisons
INSERT INTO Equipes_Saisons (ID_Equipe, ID_Saison) VALUES
(1, 1),
(2, 1),
(3, 1);

-- Insertion Joueurs_Equipes
INSERT INTO Joueurs_Equipes (ID_Joueur, ID_Equipe, ID_Saison, Date_Debut, Date_Fin) VALUES
(1, 1, 1, TO_DATE('01-07-2023', 'DD-MM-YYYY'), NULL),
(2, 2, 1, TO_DATE('01-07-2023', 'DD-MM-YYYY'), NULL);

-- Insertion Equipes_Groupes
INSERT INTO Equipes_Groupes (ID_Equipe, ID_Groupe, ID_Saison) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1);