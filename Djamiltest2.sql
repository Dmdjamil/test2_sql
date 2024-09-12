USE TESTER

CREATE TABLE vehicule (immatriculation VARCHAR(9) PRIMARY KEY NOT NULL,
Marque VARCHAR (80),
Modele VARCHAR (80),
Annee DATE,
Couleur VARCHAR (80),
NIV VARCHAR (80))

CREATE TABLE Pilote ( Fistename  VARCHAR(80),
Lastname VARCHAR (80),
LicenseNumber VARCHAR(80) PRIMARY KEY NOT NULL,
Phone NUMERIC (9),
Address__ VARCHAR(80),
City VARCHAR(80),
States  VARCHAR(80),
Zipcode NUMERIC(9))

CREATE TABLE Deplacement (vehiculeid VARCHAR(9) NOT NULL,
Dricerid VARCHAR (9) NOT NULL,
StartDate DATE,
EndDate DATE,
Startlocation VARCHAR (80),
Endlocation VARCHAR(80),
Distance NUMERIC(9))

CREATE TABLE Entretien (vehiculeid VARCHAR(9) NOT NULL, 
MaintananceDate DATE,
Description_	VARCHAR (80),
cout NUMERIC(30))

INSERT INTO vehicule (immatriculation, Marque, Modele, Annee, Couleur, NIV) 
VALUES ('ABC123', 'Toyota', 'Corolla', '2020', 'Blanc', '1HGCM82633A004352')

INSERT INTO vehicule (immatriculation, Marque, Modele, Annee, Couleur, NIV) 
VALUES ('XYZ789', 'FORD', 'Fusion', '2018', 'Bleu', '2HGCM82633A004353')

INSERT INTO Pilote (Fistename, Lastname, LicenseNumber, Phone, Address__, City, States, Zipcode) 
VALUES ('Michael', 'Smith', 'D1234567', '123456789', '123Main St', 'Anytown', 'CA', '12345')

INSERT INTO Pilote (Fistename, Lastname, LicenseNumber, Phone, Address__, City, States, Zipcode) 
VALUES ('Sarah', 'Connor', 'D7654321', '987654321', '456ELMSt', 'otherville', 'NY', '54321')

INSERT INTO Deplacement(vehiculeid, Dricerid, StartDate, EndDate,Startlocation, Endlocation, Distance) 
VALUES ('1', '1', '2024-07-01', '2024-07-02', 'Los Angeles', 'San Francisco', '380')

INSERT INTO Deplacement(vehiculeid, Dricerid, StartDate, EndDate,Startlocation, Endlocation, Distance) 
VALUES ('2', '2', '2024-07-03', '2024-07-04', 'New York', 'Washington', '225')

INSERT INTO Entretien(vehiculeid, MaintananceDate,Description_, cout) 
VALUES ('1', '2024-06-15', 'Vidange d_huile', '50000')

INSERT INTO Entretien(vehiculeid, MaintananceDate,Description_, cout) 
VALUES ('2', '2024-06-20', 'Remplacement des pneus', '300000')

/* Mettre à jour le coût du deuxieme enregistrement de Maintenance */
UPDATE Entretien SET cout=350
WHERE vehiculeid=2

/*Supprimer le premier ligne du tableau vehicule */

DELETE FROM vehicule
Where immatriculation='ABC123'

/*Insérer un enregistrement dans la table voyage */

INSERT INTO Deplacement(vehiculeid, Dricerid, StartDate, EndDate,Startlocation, Endlocation, Distance) 
VALUES ('2', '1', '2024-07-05', '2024-07-06', 'BOSTON', 'Philadelphie', '300')

/*Mettre à jour du deuxieme vehicule de la table vehicule sur "rouge"*/

UPDATE vehicule SET Couleur= 'rouge'
Where immatriculation='XYZ789'

/*Insérer un nouvel enregistrement dans la table maintenance*/

INSERT INTO Entretien(vehiculeid, MaintananceDate,Description_, cout) 
VALUES ('2', '2024-07-10', 'Inspection des frein', '100')

/* UPDATE numéro premier chauffeur dans la table conducteur*/

UPDATE Pilote SET Phone=222333444
Where LicenseNumber='D1234567'

/* Supprimer le voyage avec TRIPid= 2 de la voyage*/

DELETE FROM Deplacement
WHERE Dricerid=2





