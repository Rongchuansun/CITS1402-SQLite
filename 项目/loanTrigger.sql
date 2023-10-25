CREATE TRIGGER loanTrigger AFTER UPDATE
ON Loan
FOR EACH ROW
BEGIN
UPDATE BookCopy
SET daysLoaned = (julianday(NEW.dateBack) - julianday(OLD.dateOut) + 1)
where ISBN = OLD.ISBN and copyNumber = OLD.copyNumber;
END;