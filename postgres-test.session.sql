DROP TABLE users;

CREATE TABLE users(
    first_name VARCHAR(64),
    last_name VARCHAR(64),
    email text,
    gender VARCHAR(30),
    is_subscribe boolean,
    birthday date,
    foot_size smallint,
    height numeric(3, 2)
);

INSERT INTO users VALUES
('Petr', 'Petrov', 'mail', 'male', true, '1970-09-15', 40, 2.10),
('Misha', 'Petrovich', 'mail', 'male', true, '1770-09-15', 20, 2.10),
('Grisha', 'Petrovskiy', 'mail', 'male', true, '1970-10-15', 50, 2.10);