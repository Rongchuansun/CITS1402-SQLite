CREATE TABLE BookEdition (
   ISBN TEXT PRIMARY KEY,
   title TEXT,
   author TEXT,
   publicationDate INTEGER,
   genre TEXT,
   CHECK (length(ISBN) == 5),
   CHECK (CAST(substr(ISBN,5,1)as int) == (3*(CAST(substr(ISBN,1,1)as int) + CAST(substr(ISBN,3,1)as int)) + 7*(CAST(substr(ISBN,2,1)as int)+CAST(substr(ISBN,4,1)as int)))%10),
   CHECK (CAST(substr(ISBN,1,1)as int) >=0 and CAST(substr(ISBN,1,1)as int) <=9),
   CHECK (CAST(substr(ISBN,2,1)as int) >=0 and CAST(substr(ISBN,2,1)as int) <=9),
   CHECK (CAST(substr(ISBN,3,1)as int) >=0 and CAST(substr(ISBN,3,1)as int) <=9),
   CHECK (CAST(substr(ISBN,4,1)as int) >=0 and CAST(substr(ISBN,4,1)as int) <=9),
   CHECK (CAST(substr(ISBN,5,1)as int) >=0 and CAST(substr(ISBN,5,1)as int) <=9));