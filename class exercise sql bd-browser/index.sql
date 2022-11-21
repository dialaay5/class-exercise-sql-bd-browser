---1
CREATE TABLE contacts(
id INT PRIMARY KEY NOT NULL,
first_name TEXT NOT NULL,
last_name TEXT NOT NULL,
email TEXT NOT NULL UNIQUE,
phone TEXT NOT NULL UNIQUE,
time_of_creation TEXT NOT NULL
);

---2
DROP TABLE contacts
-- the table if deleted

---3
INSERT INTO contacts (id,first_name,last_name,email,phone,time_of_creation)
VALUES (1, 'diala','ayoub', 'diala.ay5@gmail.com', '050-265-5651', CURRENT_TIMESTAMP);
INSERT INTO contacts (id,first_name,last_name,email,phone,time_of_creation)
VALUES (2, 'omayya','abu-jabal', 'omayya12@gmail.com', '054-749-6923', CURRENT_TIMESTAMP);
INSERT INTO contacts (id,first_name,last_name,email,phone,time_of_creation)
VALUES (3, 'yoda','livy', 'yoda1220@gmail.com', '052-463-3576', CURRENT_TIMESTAMP);

SELECT * from contacts

---4
UPDATE contacts
SET phone = '050-739-7418'
WHERE ID=3

SELECT first_name, phone FROM contacts WHERE id = 3;

---5
INSERT INTO contacts (id,first_name,last_name,email,phone,time_of_creation)
VALUES (4, 'John',' Doe', 'hacker@example.com', '052-000-0001', CURRENT_TIMESTAMP);

SELECT * FROM contacts WHERE first_name like 'Jo%';

---6 
DELETE FROM contacts
WHERE ID = 4;

---7
SELECT * FROM contacts
--or
SELECT * FROM contacts WHERE id = 4; -- Result: 0 rows 




