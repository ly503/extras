DROP TABLE IF EXISTS Wine;

CREATE TABLE Wine (
WineID INT(5) NOT NULL AUTO_INCREMENT,
WineName varchar(255),
WineDate year(4),
CountryName varchar(50),
WineType varchar(20),
WineSubType varchar(20),
FlavorNotes varchar(30),
Winery varchar(55),
ComboID INT(5) NOT NULL,
OriginID INT(5) NOT NULL,
PRIMARY KEY(WineID),
FOREIGN KEY(ComboID) REFERENCES PairsWith (ComboID),
FOREIGN KEY(OriginID) REFERENCES Origin (OriginID),
FOREIGN KEY(WineType) REFERENCES WineTypeCV (WineType)
);

DROP TABLE IF EXISTS Store;

CREATE TABLE Store (
StoreID INT(5) NOT NULL AUTO_INCREMENT,
StoreName varchar(55),
StorePhoneNumber varchar(55),
StoreStreetNumber varchar(10),
StoreStreet varchar(55),
StoreCity varchar(55),
StoreZip varchar(55),
StoreNeighborhood varchar(30),
StoreEmail varchar(255),
StorePriceRange varchar(10),
StoreHyperlink varchar(255),
PRIMARY KEY(StoreID)
);

DROP TABLE IF EXISTS StoreSells;

CREATE TABLE StoreSells (
SellID INT(5) NOT NULL AUTO_INCREMENT,
StoreID INT(5) NOT NULL,
WineID INT(5) NOT NULL,
WinePrice decimal (7,2),
PRIMARY KEY(SellID),
FOREIGN KEY(StoreID) REFERENCES Store (StoreID),
FOREIGN KEY(WineID) REFERENCES Wine (WineID)
);

DROP TABLE IF EXISTS PairsWith;

CREATE TABLE PairsWith (
ComboID INT(5) NOT NULL AUTO_INCREMENT,
WineID INT(5) NOT NULL,
FoodName varchar(255),
PairsWithHyperlink varchar(255),
PRIMARY KEY(ComboID),
FOREIGN KEY(WineID) REFERENCES Wine (WineID)
);

DROP TABLE IF EXISTS Reviews;

CREATE TABLE Reviews (
ReviewID INT(5) NOT NULL AUTO_INCREMENT,
WineID INT(5) NOT NULL,
ReviewText varchar(1000),
PRIMARY KEY(ReviewID), 
FOREIGN KEY(WineID) REFERENCES Wine (WineID)
);

