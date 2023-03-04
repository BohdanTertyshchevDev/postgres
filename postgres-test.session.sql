DROP TABLE users;

CREATE TABLE users(
    first_name VARCHAR(64) not NULL CHECK(first_name != ''),
    last_name VARCHAR(64) not NULL  CONSTRAINT last_name_not_empty CHECK (last_name != ''),
    email text not NULL CHECK(email != '') UNIQUE,
    gender VARCHAR(30),
    is_subscribe boolean,
    birthday date,
    foot_size smallint,
    height numeric(3, 2) CONSTRAINT too_hight_user CHECK(height < 3.0)
);

INSERT INTO users VALUES
(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO users VALUES
('Petr', 'Petrov', 'mail1', 'male', true, '1970-09-15', NULL, 2.10),
('Misha', 'Petrovich', 'mail2', 'male', true, '1770-09-15', 20, 2.10),
('Grisha', '', 'mail3', 'male', true, '1970-10-15', NULL, 2.10);