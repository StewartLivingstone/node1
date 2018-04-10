#Make sure you create the tables before running this.
USE vet_tables;

#-- Insert data into the visit table
INSERT INTO visit VALUES ('P0001', 'V01', '21-Apr-2004', 23.99, 'Bitten left ear', 'Injection');
INSERT INTO visit VALUES ('P0002', 'V02', '21-Apr-2004', 14.75, 'Vomiting', 'Tablets and injection');
INSERT INTO visit VALUES ('P0001', 'V01', '27-Apr-2004', 20.00, 'Bitten right ear', 'Injection');
INSERT INTO visit VALUES ('P0078', 'V03', '28-Apr-2004', 15.00, 'Limping', 'Ointment');
INSERT INTO visit VALUES ('P0342', 'V02', '28-Apr-2004', 12.50, 'Not eating', 'Tablets');
INSERT INTO visit VALUES ('P0089', 'V04', '03-May-2004', 17.50, 'Limping', 'Ointment');
INSERT INTO visit VALUES ('P0132', 'V01', '03-May-2004', 15.00, 'Coughing', 'Tablets and injection');
INSERT INTO visit VALUES ('P0001', 'V04', '07-May-2004', 21.00, 'Cut on nose and leg', 'Ointment');
INSERT INTO visit VALUES ('P0097', 'V03', '08-May-2004', 12.50, 'Flaky skin', 'Ointment');
INSERT INTO visit VALUES ('P0024', 'V04', '12-May-2004', 32.50, 'Broken leg', 'Injection and cast');
INSERT INTO visit VALUES ('P0132', 'V03', '13-May-2004', 23.99, 'Bitten left ear', 'Injection');
INSERT INTO visit VALUES ('P0089', 'V04', '13-May-2004', 23.99, 'Bitten right ear', 'Injection');
INSERT INTO visit VALUES ('P0145', 'V02', '16-May-2004', 14.75, 'Vomiting', 'Tablets and injection');
INSERT INTO visit VALUES ('P0001', 'V04', '17-May-2004', 17.50, 'Scratched front leg', 'Ointment and injection');
INSERT INTO visit VALUES ('P0024', 'V04', '19-May-2004', 23.50, 'Broken leg', 'Remove cast');

#-- Insert data into the medication table
INSERT INTO medication VALUES ('P0001', 'V01', '21-Apr-2004', 1, 'Antibiotic injection', 12.00);
INSERT INTO medication VALUES ('P0002', 'V02', '21-Apr-2004', 1, 'Stomach tablets', 15.00);
INSERT INTO medication VALUES ('P0002', 'V02', '21-Apr-2004', 2, 'Anti sickness injection', 23.50);
INSERT INTO medication VALUES ('P0001', 'V01', '27-Apr-2004', 1, 'Antibiotic injection', 16.25);
INSERT INTO medication VALUES ('P0078', 'V03', '28-Apr-2004', 1, 'Soothing cream', 7.99);
INSERT INTO medication VALUES ('P0342', 'V02', '28-Apr-2004', 1, 'Stomach tablets', 12.50);
INSERT INTO medication VALUES ('P0089', 'V04', '03-May-2004', 1, 'Soothing cream', 7.99);
INSERT INTO medication VALUES ('P0089', 'V04', '03-May-2004', 2, 'Bandage', 2.50);
INSERT INTO medication VALUES ('P0132', 'V01', '03-May-2004', 1, 'Sooth throat tablets', 14.50);
INSERT INTO medication VALUES ('P0132', 'V01', '03-May-2004', 2, 'Antibiotic injection', 12.00);
INSERT INTO medication VALUES ('P0001', 'V04', '07-May-2004', 1, 'Antibiotic cream', 13.25);
INSERT INTO medication VALUES ('P0001', 'V04', '07-May-2004', 2, 'Bandage', 3.50);
INSERT INTO medication VALUES ('P0097', 'V03', '08-May-2004', 1, 'Soothing cream', 7.99);
INSERT INTO medication VALUES ('P0024', 'V04', '12-May-2004', 1, 'Antibiotic injection', 17.50);
INSERT INTO medication VALUES ('P0024', 'V04', '12-May-2004', 2, 'Plaster of paris', 15.80);
INSERT INTO medication VALUES ('P0024', 'V04', '12-May-2004', 3, 'Support Bandage', 12.75);
INSERT INTO medication VALUES ('P0132', 'V03', '13-May-2004', 1, 'Antibiotic injection', 15.00);
INSERT INTO medication VALUES ('P0132', 'V03', '13-May-2004', 2, 'Antiseptic cream', 13.25);
INSERT INTO medication VALUES ('P0089', 'V04', '13-May-2004', 1, 'Antibiotic injection', 15.00);
INSERT INTO medication VALUES ('P0089', 'V04', '13-May-2004', 2, 'Antiseptic cream', 7.50);
INSERT INTO medication VALUES ('P0145', 'V02', '16-May-2004', 1, 'Stomach tablets', 12.50);
INSERT INTO medication VALUES ('P0145', 'V02', '16-May-2004', 2, 'Antibiotic injection', 15.00);
INSERT INTO medication VALUES ('P0001', 'V04', '17-May-2004', 1, 'Bandage', 8.60);
INSERT INTO medication VALUES ('P0001', 'V04', '17-May-2004', 2, 'Antibiotic cream', 9.25);
INSERT INTO medication VALUES ('P0001', 'V04', '17-May-2004', 3, 'Antibiotic injection', 15.00);
INSERT INTO medication VALUES ('P0024', 'V04', '19-May-2004', 1, 'Antiseptic cream', 17.50);

#-- Commit the data to the database, i.e. make it permanent
COMMIT;

#-- Count the number of rows in each table
SELECT 'Visit     ', COUNT(*) FROM visit;
SELECT 'Medication', COUNT(*) FROM medication;

