-- Contraintes pour la table Equipes
ALTER TABLE Equipes
ADD CONSTRAINT fk_equipes_pays
FOREIGN KEY (ID_Pays) REFERENCES Pays(ID_Pays);

-- Contraintes pour la table Joueurs
ALTER TABLE Joueurs
ADD CONSTRAINT fk_joueurs_pays
FOREIGN KEY (ID_Pays) REFERENCES Pays(ID_Pays);

-- Contraintes pour la table Entraineurs
ALTER TABLE Entraineurs
ADD CONSTRAINT fk_entraineurs_pays
FOREIGN KEY (ID_Pays) REFERENCES Pays(ID_Pays);

-- Contraintes pour la table Statistiques_Equipe
ALTER TABLE Statistiques_Equipe
ADD CONSTRAINT fk_statequipe_equipe
FOREIGN KEY (ID_Equipe) REFERENCES Equipes(ID_Equipe);

ALTER TABLE Statistiques_Equipe
ADD CONSTRAINT fk_statequipe_saison
FOREIGN KEY (ID_Saison) REFERENCES Saisons(ID_Saison);

-- Contraintes pour la table Statistiques_Joueur
ALTER TABLE Statistiques_Joueur
ADD CONSTRAINT fk_statjoueur_joueur
FOREIGN KEY (ID_Joueur) REFERENCES Joueurs(ID_Joueur);

ALTER TABLE Statistiques_Joueur
ADD CONSTRAINT fk_statjoueur_saison
FOREIGN KEY (ID_Saison) REFERENCES Saisons(ID_Saison);

-- Contraintes pour les tables de liaison
ALTER TABLE Equipes_Saisons
ADD CONSTRAINT fk_eqsaisons_equipe
FOREIGN KEY (ID_Equipe) REFERENCES Equipes(ID_Equipe);

ALTER TABLE Equipes_Saisons
ADD CONSTRAINT fk_eqsaisons_saison
FOREIGN KEY (ID_Saison) REFERENCES Saisons(ID_Saison);

ALTER TABLE Joueurs_Equipes
ADD CONSTRAINT fk_joueq_joueur
FOREIGN KEY (ID_Joueur) REFERENCES Joueurs(ID_Joueur);

ALTER TABLE Joueurs_Equipes
ADD CONSTRAINT fk_joueq_equipe
FOREIGN KEY (ID_Equipe) REFERENCES Equipes(ID_Equipe);

ALTER TABLE Joueurs_Equipes
ADD CONSTRAINT fk_joueq_saison
FOREIGN KEY (ID_Saison) REFERENCES Saisons(ID_Saison);

ALTER TABLE Equipes_Groupes
ADD CONSTRAINT fk_eqgr_equipe
FOREIGN KEY (ID_Equipe) REFERENCES Equipes(ID_Equipe);

ALTER TABLE Equipes_Groupes
ADD CONSTRAINT fk_eqgr_groupe
FOREIGN KEY (ID_Groupe) REFERENCES Groupes(ID_Groupe);

ALTER TABLE Equipes_Groupes
ADD CONSTRAINT fk_eqgr_saison
FOREIGN KEY (ID_Saison) REFERENCES Saisons(ID_Saison);

ALTER TABLE Sponsors_Equipes
ADD CONSTRAINT fk_speq_sponsor
FOREIGN KEY (ID_Sponsor) REFERENCES Sponsors(ID_Sponsor);

ALTER TABLE Sponsors_Equipes
ADD CONSTRAINT fk_speq_equipe
FOREIGN KEY (ID_Equipe) REFERENCES Equipes(ID_Equipe);

ALTER TABLE Equipes_Phases
ADD CONSTRAINT fk_eqph_equipe
FOREIGN KEY (ID_Equipe) REFERENCES Equipes(ID_Equipe);

ALTER TABLE Equipes_Phases
ADD CONSTRAINT fk_eqph_phase
FOREIGN KEY (ID_Phase) REFERENCES Phases(ID_Phase);

ALTER TABLE Equipes_Phases
ADD CONSTRAINT fk_eqph_saison
FOREIGN KEY (ID_Saison) REFERENCES Saisons(ID_Saison);

ALTER TABLE Entraineurs_Equipes
ADD CONSTRAINT fk_enteq_entraineur
FOREIGN KEY (ID_Entraineur) REFERENCES Entraineurs(ID_Entraineur);

ALTER TABLE Entraineurs_Equipes
ADD CONSTRAINT fk_enteq_equipe
FOREIGN KEY (ID_Equipe) REFERENCES Equipes(ID_Equipe);

ALTER TABLE Entraineurs_Equipes
ADD CONSTRAINT fk_enteq_saison
FOREIGN KEY (ID_Saison) REFERENCES Saisons(ID_Saison);