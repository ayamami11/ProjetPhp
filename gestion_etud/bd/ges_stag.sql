

DROP DATABASE IF EXISTS gestion_etudiant;
CREATE DATABASE IF NOT EXISTS gestion_etudiant;
USE gestion_etudiant;


CREATE TABLE UTILISATEUR (
	ID int(4) AUTO_INCREMENT PRIMARY KEY,
	LOGIN VARCHAR(100) NOT NULL,
	PWD VARCHAR(255) NOT NULL,
	ROLE VARCHAR(50),
	EMAIL VARCHAR(255),
	ETAT INT(1)); 

		
CREATE TABLE ETUDIANT (
	ID int(4) AUTO_INCREMENT PRIMARY KEY,
	NOM VARCHAR(50) NOT NULL,
	PRENOM VARCHAR(50) NOT NULL,
	ID_FILIERE int(4),
	PHOTO VARCHAR(50),
	CIVILITE VARCHAR(1));

CREATE TABLE FILIERE (                    
	ID int(4) AUTO_INCREMENT PRIMARY KEY, 
	NOM_FILIERE VARCHAR(100) NOT NULL,    
	NIVEAU VARCHAR(100) NOT NULL); 
	
ALTER TABLE ETUDIANT ADD constraint fk10 foreign key(ID_FILIERE) references FILIERE(ID);

INSERT INTO FILIERE(NOM_FILIERE,NIVEAU) VALUES
	('MPI','1'),
	('IIA2','2'),
	('RT2','2'),
	('GL2','2'),
	('IMI2','2'),
	('IIA3','3'),
	('RT3','3'),
	('GL3','3'),
	('IMI3','3'),
	('IIA4','4'),
	('RT4','4'),
	('GL4','4'),
	('IMI4','4'),
	('IIA5','5'),
	('RT5','5'),
	('GL5','5'),
	('IMI5','5')
	;	
	
	
INSERT INTO UTILISATEUR VALUES 
	(1,'admin',md5('1234'),'ADMIN','aya.mami69@gmail.com',1),
	(2,'aya',md5('1234'),'VISITEUR','aya@gmail.com',1),
	(3,'asma',md5('1234'),'VISITEUR','asma@gmail.com',1);	

INSERT INTO ETUDIANT(NOM,PRENOM,ID_FILIERE,PHOTO,CIVILITE) VALUES
('MAMI','AYA',11,'aya.png','F'),
	('SEHLI','ASMA',11,'asma.png','F'),
	('BEN MANSOUR','IMEN',11,'imen.png','F'),
	('MELLITI','ISLEM',11,'islam_2.jpg','F'),
	('TOUNSI','ALI',5,'m1.png','M'),
	('MAMI','ALA',6,'m2.png','M'),
    ('Mhiri','Yasmine',12,'yasmine.png','M'),
	('Naoui','Safe',13,'safe.png','M');
	

SELECT * FROM FILIERE;
SELECT * FROM ETUDIANT;
SELECT * FROM UTILISATEUR;
				
