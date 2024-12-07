-- Tables principales

CREATE TABLE Pays (
    ID_Pays NUMBER PRIMARY KEY,
    Nom VARCHAR2(100),
    Continent VARCHAR2(50)
);

CREATE TABLE Equipes (
    ID_Equipe NUMBER PRIMARY KEY,
    Nom VARCHAR2(100),
    ID_Pays NUMBER,
    Annee_Creation NUMBER,
    Logo BLOB
);

CREATE TABLE Joueurs (
    ID_Joueur NUMBER PRIMARY KEY,
    Nom VARCHAR2(100),
    Prenom VARCHAR2(100),
    Date_Naissance DATE,
    ID_Pays NUMBER,
    Poste VARCHAR2(50)
);

CREATE TABLE Saisons (
    ID_Saison NUMBER PRIMARY KEY,
    Annee_Debut NUMBER,
    Annee_Fin NUMBER
);

CREATE TABLE Groupes (
    ID_Groupe NUMBER PRIMARY KEY,
    Nom VARCHAR2(50)
);

CREATE TABLE Entraineurs (
    ID_Entraineur NUMBER PRIMARY KEY,
    Nom VARCHAR2(100),
    Prenom VARCHAR2(100),
    ID_Pays NUMBER
);

CREATE TABLE Statistiques_Equipe (
    ID_Stat_Equipe NUMBER PRIMARY KEY,
    ID_Equipe NUMBER,
    ID_Saison NUMBER,
    Matchs_Joues NUMBER,
    Victoires NUMBER,
    Nuls NUMBER,
    Defaites NUMBER,
    Buts_Pour NUMBER,
    Buts_Contre NUMBER
);

CREATE TABLE Statistiques_Joueur (
    ID_Stat_Joueur NUMBER PRIMARY KEY,
    ID_Joueur NUMBER,
    ID_Saison NUMBER,
    Matchs_Joues NUMBER,
    Buts_Marques NUMBER,
    Passes_Decisives NUMBER,
    Minutes_Jouees NUMBER
);

CREATE TABLE Sponsors (
    ID_Sponsor NUMBER PRIMARY KEY,
    Nom VARCHAR2(100),
    Type VARCHAR2(50)
);

CREATE TABLE Phases (
    ID_Phase NUMBER PRIMARY KEY,
    Nom VARCHAR2(50)
);

-- Tables de liaison
CREATE TABLE Equipes_Saisons (
    ID_Equipe NUMBER,
    ID_Saison NUMBER,
    PRIMARY KEY (ID_Equipe, ID_Saison)
);

CREATE TABLE Joueurs_Equipes (
    ID_Joueur NUMBER,
    ID_Equipe NUMBER,
    ID_Saison NUMBER,
    Date_Debut DATE,
    Date_Fin DATE,
    PRIMARY KEY (ID_Joueur, ID_Equipe, ID_Saison)
);

CREATE TABLE Equipes_Groupes (
    ID_Equipe NUMBER,
    ID_Groupe NUMBER,
    ID_Saison NUMBER,
    PRIMARY KEY (ID_Equipe, ID_Groupe, ID_Saison)
);

CREATE TABLE Sponsors_Equipes (
    ID_Sponsor NUMBER,
    ID_Equipe NUMBER,
    Date_Debut DATE,
    Date_Fin DATE,
    PRIMARY KEY (ID_Sponsor, ID_Equipe)
);

CREATE TABLE Equipes_Phases (
    ID_Equipe NUMBER,
    ID_Phase NUMBER,
    ID_Saison NUMBER,
    PRIMARY KEY (ID_Equipe, ID_Phase, ID_Saison)
);

CREATE TABLE Entraineurs_Equipes (
    ID_Entraineur NUMBER,
    ID_Equipe NUMBER,
    ID_Saison NUMBER,
    Date_Debut DATE,
    Date_Fin DATE,
    PRIMARY KEY (ID_Entraineur, ID_Equipe, ID_Saison)
);