-- JMERISE

-- Il faudra pouvoir afficher tous les biens par ordre de prix (nom du bien, son type, son code postal, son prix)

SELECT Name, ZipCode, Price, Type 
FROM biens
INNER JOIN Type
ON biens.ID_Type = type.ID
order by Price;

-- Il faudra pouvoir afficher les rendez-vous par ordre chronologique
-- (date et créneau horaire du rendez-vous, nom du bien, son type, son code postal, son prix, nom et prénom du client)

SELECT DateVisit, Creneaux, Name, Type, ZipCode, Price, Lastname, Firstname
FROM rendezvous
INNER JOIN biens
ON biens.ID = rendezvous.ID_Biens
INNER JOIN customers
ON customers.ID = rendezvous.ID_Customers
INNER JOIN creneaux
ON creneaux.ID = rendezvous.ID_Creneaux
INNER JOIN type
ON type.ID = biens.ID_Type;

-- Il faudra pouvoir afficher les clients par type de bien qu'ils recherchent (nom et prénom du client, type de bien, budget)

SELECT Lastname, Firstname, Type, Budget
FROM customers
INNER Join Type
ON type.ID = customers.ID_Type;

-- TABLES VALUES

INSERT INTO biens (Name, ZipCode, Price, ID_Type)
VALUES
("Maison individuelle", 76400, 195000, 1),
("Appartement vue mer", 76400, 158000, 2),
("Terrain 800m²", 76400, 75000, 3),
("Appartement 2 pièces", 76400, 65000, 2),
("Terrain 1500m²", 76400, 145000, 3),
("Appartement 3 pièces", 76400, 78000, 2),
("Terrain 900m²", 76400, 189000, 3),
("Appartement 4 pièces", 76400, 89000, 2),
("Maison 135m²", 76400, 245000, 1),
("Appartement 5 pièces", 76400, 98000, 2),
("Maison 150m²", 76400, 280000, 1),
("Appartement 6 pièces", 76400, 123000, 2),
("Maison 70m²", 76400, 140000, 1),
("Appartement Centre-Ville", 76400, 90000, 2),
("Maison Centre-ville", 76400, 260000, 1),
("Appartement 1 pièce", 76400, 35000, 2),
("Maison de pêcheur", 76400, 113000, 1),
("Appartement Centre-Ville", 76600, 148000, 2),
("Maison contemporaine", 76600, 215000, 1),
("Appartement vue mer", 76600, 264000, 2),
("Maison individuelle", 76600, 260000, 1),
("Appartement 4 pièces", 76150, 187000, 2),
("Maison de ville", 76150, 139000, 1),
("Appartement insalubre", 76100, 56000, 2),
("Maison pas finie", 76100, 78000, 1),
("Appartement avec champignons", 76100, 49500, 2),
("Maison sans extérieur", 76600, 95599, 1),
("Appartement vue décheterrie", 76600, 56450, 2),
("Maison sans fenêtres", 76150, 102000, 1),
("Appartement 20m²", 76150, 25000, 2);

INSERT INTO Type (Type)
VALUES
("Maison"),
("Appartement"),
("Terrain");

INSERT INTO Creneaux (Creneaux)
VALUES
("Début matinée"),
("Fin matinée"),
("Midi"),
("Début après-midi"),
("Fin après-midi"),
("Soir");

INSERT INTO customers (Lastname, Firstname, DateBirth, Mail, Budget, ID_Type)
VALUES
("WESH", "Abdel", "1975-06-05", "abdelwesh0@gmail.com", 150000, 2),
("HOULA", "Kadel", "1950-05-10", "abdelwesh1@gmail.fr", 150000, 2),
("FRER", "Kaaris", "1956-03-23", "abdelwesh2@gmail.fr", 200000, 1),
("VIS", "Jean", "1989-04-20", "abdelwesh3@gmail.com", 200000, 1),
("ALLER", "Vaten", "1992-06-20", "abdelwesh4@gmail.com", 250000, 1),
("DUPONT", "Jacques", "1945-06-16", "abdelwesh5@gmail.com", 230000, 2),
("DUPRES", "Alex", "1987-12-17", "abdelwesh6@gmail.fr", 120000, 2),
("DELOIN", "Alain", "1986-09-12", "abdelwesh7@gmail.fr", 90000, 1),
("ZIP", "Fichier", "1982-02-28", "abdelwesh8@gmail.fr", 250000, 2),
("RAR", "Philippe", "1976-03-12", "abdelwesh9@gmail.com", 300000, 3),
("DELL", "Minotor", "1975-04-12", "abdelwesh10@gmail.fr", 350000, 2),
("AVANCE", "Ptichinois", "1974-05-12", "abdelwesh11@gmail.com", 290000, 3),
("PEPSI", "Fatman", "1968-09-12", "abdelwesh12@gmail.com", 260000, 2),
("KFC", "Matthias", "1969-08-02", "abdelwesh13@gmail.fr", 215000, 3),
("HILIAVE", "Vlad", "1959-10-12", "abdelwesh14@gmail.com", 140000, 2),
("GERMAN", "Gestap", "1984-10-16", "abdelwesh15@gmail.com", 180000, 1),
("FRONCET", "Filibert", "1978-11-11", "abdelwesh16@gmail.com", 260000, 3),
("LIBRE", "Freedom", "1996-12-24", "abdelwesh17@gmail.com", 290000, 2),
("LOPAF", "Paflechien", "1998-12-31", "abdelwesh18@gmail.com", 300000, 2),
("MIOUMIOU", "Chat", "1999-07-26", "abdelwesh19@gmail.com", 280000, 1);

INSERT INTO rendezvous (DateVisit, ID_Creneaux, ID_Biens, ID_Customers) 
VALUES
("2021-02-10", 1, 31, 3),
("2021-02-13", 2, 54, 14),
("2021-02-24", 3, 45, 20),
("2021-02-26", 4, 36, 7),
("2021-03-05", 5, 39, 2),
("2021-03-13", 1, 52, 5),
("2021-04-26", 3, 47, 9),
("2021-04-28", 2, 59, 12),
("2021-05-16", 3, 33, 18),
("2021-06-13", 6, 42, 16);