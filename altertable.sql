USE mydbname;
ALTER TABLE cats ADD owner VARCHAR(150) NOT NULL after name;
ALTER TABLE cats ADD birth DATE NOT NULL after owner;

