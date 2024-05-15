
CREATE DATABASE CRV;
USE CRV;

CREATE TABLE Lista_stoc(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, brand VARCHAR(20) , model VARCHAR(20), an_fabr INT, combustibil VARCHAR(20), putere INT , caroserie VARCHAR(20), km INT, pret INT);
INSERT INTO Lista_stoc(brand,model,an_fabr,combustibil,putere,caroserie,km,pret) VALUES( 'BMW','540I',2020, 'benzina',340,'sedan',30000,45000);
INSERT INTO Lista_stoc(brand,model,an_fabr,combustibil,putere,caroserie,km,pret) VALUES( 'BMW','M340I',2021, 'benzina',367,'sedan',25000,51000);
INSERT INTO Lista_stoc(brand,model,an_fabr,combustibil,putere,caroserie,km,pret) VALUES( 'AUDI','A7',2017, 'diesel',326,'sedan',56000,31000);
INSERT INTO Lista_stoc(brand,model,an_fabr,combustibil,putere,caroserie,km,pret) VALUES( 'Mercedes','C220d',2016, 'diesel',170,'touring',76000,15000);
INSERT INTO Lista_stoc(brand,model,an_fabr,combustibil,putere,caroserie,km,pret) VALUES( 'Volkswagen','Passat',2013, 'diesel',177,'sedan',105000,11500);
INSERT INTO Lista_stoc(brand,model,an_fabr,combustibil,putere,caroserie,km,pret) VALUES( 'Toyota','Corolla',2022, 'hybrid',158,'touring',1000,41000);
INSERT INTO Lista_stoc(brand,model,an_fabr,combustibil,putere,caroserie,km,pret) VALUES( 'Tesla','3',2018, 'electric',560,'sedan',38000,43000);
INSERT INTO Lista_stoc(brand,model,an_fabr,combustibil,putere,caroserie,km,pret) VALUES( 'Mercedes','GLE400',2020, 'benzina',333,'suv',12000,68000);

CREATE TABLE Masini_vandute(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,brand VARCHAR(20) , model VARCHAR(20), pret INT, nume_proprietar VARCHAR(30));
INSERT INTO Masini_vandute(brand,model,pret,nume_proprietar) VALUES( 'Volkswagen','golf',10500,'Razvanescu Stefan');
INSERT INTO Masini_vandute(brand,model,pret,nume_proprietar) VALUES( 'Audi','A6',28800,'Django Freeman');
INSERT INTO Masini_vandute(brand,model,pret,nume_proprietar) VALUES( 'Dacia','Duster',31000,'Stalin Iosif');
INSERT INTO Masini_vandute(brand,model,pret,nume_proprietar) VALUES( 'Opel','Astra',10500,'Ion Iliescu');

CREATE TABLE Stare_masini(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, brand VARCHAR(20) , model VARCHAR(20),stare VARCHAR(20));
INSERT INTO Stare_masini(brand,model,stare) VALUES( 'BMW','540I','revizuita');
INSERT INTO Stare_masini(brand,model,stare) VALUES( 'BMW','M340I','schimb consumabile');
INSERT INTO Stare_masini(brand,model,stare) VALUES( 'Audi','A7','revizuita');
INSERT INTO Stare_masini(brand,model,stare) VALUES( 'Mercedes','C220d','avariata');
INSERT INTO Stare_masini(brand,model,stare) VALUES( 'Volkswagen','Passat','revizuita');
INSERT INTO Stare_masini(brand,model,stare) VALUES( 'Toyota','Corolla','revizuita');
INSERT INTO Stare_masini(brand,model,stare) VALUES( 'Tesla','3','schimb consumabile');
INSERT INTO Stare_masini(brand,model,stare) VALUES( 'Mercedes','GLE400','revizuita');

CREATE TABLE Masini_testate(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, brand VARCHAR(20) , model VARCHAR(20),optima VARCHAR(20));
INSERT INTO Masini_testate(brand,model,optima) VALUES( 'BMW','540I','optima');
INSERT INTO Masini_testate(brand,model,optima) VALUES( 'BMW','M340I','optima');
INSERT INTO Masini_testate(brand,model,optima) VALUES( 'Audi','A7','optima');
INSERT INTO Masini_testate(brand,model,optima) VALUES( 'Mercedes','C220d','defecta');
INSERT INTO Masini_testate(brand,model,optima) VALUES( 'Volkswagen','Passat','optima');
INSERT INTO Masini_testate(brand,model,optima) VALUES( 'Toyota','Corolla','optima');
INSERT INTO Masini_testate(brand,model,optima) VALUES( 'Tesla','3','defecta');
INSERT INTO Masini_testate(brand,model,optima) VALUES( 'Mercedes','GLE400','optima');

CREATE TABLE Agenti_vanzari(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,nume VARCHAR(30), prenume VARCHAR(30), cnp VARCHAR(20), email VARCHAR(20), telefon VARCHAR(20), specializare VARCHAR(20), modele_vandute VARCHAR(20), nr_clienti INT);
INSERT INTO Agenti_vanzari(nume,prenume,cnp,email,telefon,specializare,modele_vandute,nr_clienti) VALUES('Adolf', 'Hitler','3265425','adolf@auschwitz.de', '0732657322', 'benzina', 'golf',4);
INSERT INTO Agenti_vanzari(nume,prenume,cnp,email,telefon,specializare,modele_vandute,nr_clienti) VALUES('Traian', 'Basescu','6765475','traianbase@gmail.ro', '0722547322', 'diesel', 'A6',2);
INSERT INTO Agenti_vanzari(nume,prenume,cnp,email,telefon,specializare,modele_vandute,nr_clienti) VALUES('Miron', 'Cozma','837455','cozma12@gmail.ro', '0721876119', 'benzina', 'Duster',12);
INSERT INTO Agenti_vanzari(nume,prenume,cnp,email,telefon,specializare,modele_vandute,nr_clienti) VALUES('Ray', 'Mysterio','765383','rayaltau@yahoo.com', '0721743775', 'benzina', 'Astra',2);

CREATE TABLE Proprietari(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,nume VARCHAR(30), prenume VARCHAR(30), cnp VARCHAR(20), email VARCHAR(20), telefon VARCHAR(20));
INSERT INTO Proprietari(nume,prenume,cnp,email) VALUES('Nitoiu', 'Mihnea','3265425','nitoiuu@gmail.ro');
INSERT INTO Proprietari(nume,prenume,cnp,email) VALUES('Marius', 'Csampar','6765475','killer1234@gmail.ro');
INSERT INTO Proprietari(nume,prenume,cnp,email) VALUES('Dan', 'Diaconescu','837455','otv@gmail.ro');
INSERT INTO Proprietari(nume,prenume,cnp,email) VALUES('Serghei', 'Mizil','765383','mizilic34@yahoo.com');
