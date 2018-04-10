USE mydbname;
CREATE TABLE visits (
  idVisit INT unsigned NOT NULL AUTO_INCREMENT,
  id INT NOT NULL,    #fk to cats
  visitstart DATE NOT NULL,
  visitend DATE NOT NULL,
  PRIMARY KEY (idVisit)
);
DESCRIBE visits;