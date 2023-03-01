DROP TABLE users;

CREATE TABLE users(
    first_name VARCHAR(64) not NULL,
    last_name VARCHAR(64) not NULL,
    email text not NULL,
    gender VARCHAR(30),
    is_subscribe boolean,
    birthday date,
    foot_size smallint,
    height numeric(3, 2)
);

INSERT INTO users VALUES
(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO users VALUES
('Petr', 'Petrov', 'mail', 'male', true, '1970-09-15', NULL, 2.10),
('Misha', 'Petrovich', 'mail', 'male', true, '1770-09-15', 20, 2.10),
('Grisha', 'Petrovskiy', 'mail', 'male', true, '1970-10-15', NULL, 2.10);