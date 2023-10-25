CREATE VIEW ReadingHistory AS
SELECT clientID, CAST(substr(dateOut, 1, 4)as int) as yr, genre, count(*) as numLoans
   FROM BookEdition join loan USING (ISBN)
   group by clientID, yr, genre;            