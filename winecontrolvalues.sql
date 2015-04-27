DROP TABLE IF EXISTS Origin;
DROP TABLE IF EXISTS WineTypeCV;

CREATE TABLE Origin (
OriginID INT(5) NOT NULL AUTO_INCREMENT,
CountryName varchar(50),
CountryRegion varchar(50),
WineID INT(5) NOT NULL,
PRIMARY KEY(OriginID)
);


CREATE TABLE WineTypeCV (
WineType VARCHAR(20) NOT NULL,
PRIMARY KEY(WineType)
);


INSERT INTO Origin VALUES (NULL, "Spain", "Jumilla", 1);
INSERT INTO Origin VALUES (NULL, "Argentina", "Mendoza", 2);
INSERT INTO Origin VALUES (NULL, "Portugal", "Setubal", 3);
INSERT INTO Origin VALUES (NULL, "France", "Rhone", 4);
INSERT INTO Origin VALUES (NULL, "Germany", "Rheingau", 5);
INSERT INTO Origin VALUES (NULL, "U.S.A.", "California", 6);
INSERT INTO Origin VALUES (NULL, "New Zealand", "Marlborough" , 7);
INSERT INTO Origin VALUES (NULL, "Italy", "Friuli-Venezia", 8);
INSERT INTO Origin VALUES (NULL, "South Africa", "Cape Coastal", 9);
INSERT INTO Origin VALUES (NULL, "Chile", "Colchagua", 10);


INSERT INTO WineTypeCV VALUES ("Red");
INSERT INTO WineTypeCV VALUES ("White");
INSERT INTO WineTypeCV VALUES ("Rose");
