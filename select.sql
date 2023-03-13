SELECT * FROM users;

SELECT first_name, last_name, is_subscribe FROM users WHERE is_subscribe = TRUE;

SELECT * FROM users WHERE id % 2 = 0;

SELECT * FROM users WHERE height > 1.5;

SELECT * FROM users WHERE is_subscribe = true AND gender = 'male';

--------------------

SELECT * FROM users WHERE first_name = 'Anton';

------------------------

SELECT * FROM users WHERE first_name IN ('William', 'Anton', 'John');

-----------

SELECT * FROM users WHERE id >= 460 AND id <= 500;

SELECT * FROM users WHERE id BETWEEN 460 AND 500;

--------------------

SELECT * FROM users WHERE id BETWEEN 50 AND 100;

------------------

SELECT * FROM users WHERE first_name LIKE 'K%';

SELECT * FROM users WHERE first_name LIKE '___';

SELECT * FROM users WHERE first_name LIKE 'A__';

SELECT * FROM users WHERE first_name LIKE '%a';

-----------------------------
ALTER TABLE users
ADD COLUMN weight int CHECK (weight != 0 AND  weight > 0);


UPDATE users
SET weight = 60
WHERE gender = 'female';

UPDATE users
SET weight = 90
WHERE gender = 'male';

UPDATE users
SET weight = 60
WHERE id = 53;

----------------------------------

CREATE TABLE employ(
    id serial PRIMARY KEY,
    name varchar(256) NOT NULL CHECK (name != ''),
    salary int NOT NULL CHECK (salary > 0),
    work_hours int NOT NULL CHECK (salary >= 0)
);

INSERT INTO employ (name, salary, work_hours) VALUES
('Ivanov', 300, 100),
('Petrov', 500, 80),
('Sidorov', 700, 230);

UPDATE employ
SET salary = salary * 1.2
WHERE work_hours > 150;

DROP TABLE employ;
-----------------------------------

