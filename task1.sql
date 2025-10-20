--
-- File generated with SQLiteStudio v3.4.17 on Mon Oct 20 21:02:34 2025
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: BOOK
CREATE TABLE IF NOT EXISTS BOOK (book_id INTEGER PRIMARY KEY, title, author, publisher, yearpublished);

-- Table: Loan
CREATE TABLE IF NOT EXISTS Loan (loan_id INTEGER PRIMARY KEY, book_id INTEGER REFERENCES BOOK (book_id), member_id INTEGER REFERENCES Member (member_id), loandate, returndate);

-- Table: Member
CREATE TABLE IF NOT EXISTS Member (member_id PRIMARY KEY, name, email, joindate);
INSERT INTO Member (member_id, name, email, joindate) VALUES (101, 'Adi', 'adi@gmail.com', '25-10-20');
INSERT INTO Member (member_id, name, email, joindate) VALUES (102, 'Tejas', 'tejas@gmail.com', '2025-10-19');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
