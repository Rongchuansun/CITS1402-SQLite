CREATE TABLE loan(
   clientID INTEGER,
   ISBN TEXT,
   copyNumber INTEGER,
   dateOut TEXT,
   dateBack TEXT,
   FOREIGN KEY (clientID) REFERENCES Client(clientID)
     ON UPDATE CASCADE
     ON DELETE SET NULL,
   FOREIGN KEY (ISBN, copyNumber) REFERENCES BookCopy(ISBN, copyNumber));
   