USE vet_tables;

DROP TABLE owner;
DROP TABLE pet;
DROP TABLE practice;
DROP TABLE vet;

#-- Create the owner table
CREATE TABLE owner
(  owner_id		INTEGER			NOT NULL
 , surname		CHAR VARYING(25)	NOT NULL
 , forename		CHAR VARYING(20)	NOT NULL
 , title		CHAR VARYING(4)		NOT NULL
 , tel_number		CHAR VARYING(15)
 , address		CHAR VARYING(50)	NOT NULL
 , PRIMARY KEY (owner_id)
);

#-- Insert data into the owner table
INSERT INTO owner VALUES (1, 'Jackson', 'Janet', 'Miss', '0141-223321', '1, Main Street, Glasgow');
INSERT INTO owner VALUES (2, 'Singh', 'Raj', 'Mr', '0141-326535', '22, The Hill, Glasgow');
INSERT INTO owner VALUES (3, 'Campbell', 'Bernard', 'Mr', '0143-46532', '21, High Street, Glasgow');
INSERT INTO owner VALUES (4, 'Hussain', 'Pauline', 'Mrs', '0142-68543', '51, Elm Grove, Glasgow');
INSERT INTO owner VALUES (5, 'Otten', 'Gerard', 'Dr', '0141-557536', '77, The Walk, Glasgow');

#-- Create the pet table
#-- Born is year of birth, e.g. 1999
CREATE TABLE pet
(  pet_id		CHAR(5)			NOT NULL
 , name			CHAR VARYING(25)	NOT NULL
 , type			CHAR VARYING(15)	NOT NULL
 , breed		CHAR VARYING(15)	NOT NULL
 , gender		CHAR(1)
 , born			INTEGER
 , owner_id		INTEGER			NOT NULL
 , notes		CHAR VARYING(100)
 , PRIMARY KEY (pet_id)
);

#-- Insert data into the pet table
INSERT INTO pet VALUES ('P0001', 'Tiddles', 'cat', 'persian', 'F', 1998, 2, 'Has a bad temper and scratches you');
INSERT INTO pet VALUES ('P0002', 'Lassie', 'dog', 'retriever', 'M', 2001,  5, 'Allergic to penicillin');
INSERT INTO pet VALUES ('P0005', 'Jaws', 'fish', 'goldfish', 'X', NULL, 2, NULL);
INSERT INTO pet VALUES ('P0024', 'Spot', 'dog', 'mongrel', 'M', 1996, 4, 'Very docile');
INSERT INTO pet VALUES ('P0078', 'Trigger', 'horse', 'shire', 'F', 1988, 1, 'Allergic to penicillin');
INSERT INTO pet VALUES ('P0089', 'Lassie', 'dog', 'sheepdog', 'M', 2001, 3, 'Poor heart');
INSERT INTO pet VALUES ('P0097', 'Jaws 2', 'fish', 'angel', 'X', NULL, 2, NULL);
INSERT INTO pet VALUES ('P0132', 'Ginger', 'cat', 'siamese', 'F', 2000, 4, 'Bad tempered');
INSERT INTO pet VALUES ('P0145', 'Shep', 'dog', 'sheepdog', 'M', 1993, 5, 'Eats everything');
INSERT INTO pet VALUES ('P0342', 'Slippy', 'snake', 'addder', 'X', 2002, 1, NULL);

#-- Create the practice table
CREATE TABLE practice
(  practice_id		CHAR(2)			NOT NULL
 , practice_name	CHAR VARYING(20)	NOT NULL
 , practice_address	CHAR VARYING(50)	NOT NULL
 , PRIMARY KEY (practice_id)
);

#-- Insert data into the practice table
INSERT INTO practice VALUES ('P1', 'Practice Head Office', '27, The Hill, Glasgow');
INSERT INTO practice VALUES ('P2', 'Practice Unit 1', 'Unit 1, Houston Estate, Glasgow');

#-- Create the vet table
CREATE TABLE vet
(  vet_id		CHAR(3)			NOT NULL
 , surname		CHAR VARYING(25)	NOT NULL
 , forename		CHAR VARYING(20)	NOT NULL
 , title		CHAR VARYING(4)		NOT NULL
 , ext_number		INTEGER			NOT NULL
 , position		CHAR VARYING(14)	NOT NULL
 , salary		DECIMAL(7,2)		NOT NULL
 , practice_id		CHAR(2)
 , PRIMARY KEY (vet_id)
);

#-- Insert data into the vet table
INSERT INTO vet VALUES ('V01', 'Wilson', 'Sarah', 'Dr', 6122, 'Senior Partner', 45000, 'P1');
INSERT INTO vet VALUES ('V02', 'McDonald', 'Bryan', 'Dr', 6154, 'Senior Partner', 35000, 'P1');
INSERT INTO vet VALUES ('V03', 'Patel', 'Jane', 'Dr', 6165, 'Junior Partner', 29000, 'P2');
INSERT INTO vet VALUES ('V04', 'McCafferty', 'Trevor', 'Mr', 6166, 'Junior Partner', 25600, 'P2');

#-- Commit the data to the database, i.e. make it permanent
COMMIT;

#-- List the tables created
#SELECT * FROM cat;
SHOW TABLES;

#-- Count the number of rows in each table
#SET HEADING OFF
SELECT 'Owner   ', COUNT(*) FROM owner;
SELECT 'Pet     ', COUNT(*) FROM pet;
SELECT 'Practice', COUNT(*) FROM practice;
SELECT 'Vet     ', COUNT(*) FROM vet;
#SET HEADING ON
