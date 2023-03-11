CREATE TABLE departments(
    id serial PRIMARY KEY,
    name varchar(256) NOT NULL CHECK(name != '')
);

DROP TABLE proups;

CREATE TABLE groups(
    id serial PRIMARY KEY,
    departments_id int REFERENCES departments(id)
);

CREATE TABLE students(
    id serial PRIMARY KEY,
    first_name varchar(256) NOT NULL CHECK(first_name != ''),
    last_name varchar(256) NOT NULL CHECK(last_name != ''),
    group_id int REFERENCES groups(id)
);

CREATE TABLE subjects(
    id serial PRIMARY KEY,
    name varchar(256) NOT NULL CHECK(name != ''),
    teacher varchar(256) NOT NULL CHECK (teacher != '')
);

CREATE TABLE exams(
    student_id int REFERENCES students(id),
    subject_id int REFERENCES subjects(id),
    grade int,
    is_passed boolean GENERATED ALWAYS AS (grade >= 64) STORED
);


INSERT INTO departments (name) VALUES
('KNT'),
('GFG'),
('HTF'),
('HT'),
('YRR');

INSERT INTO groups (departments_id) VALUES
(1), (2), (2), (5), (5);


INSERT INTO students (first_name, last_name, group_id) VALUES
('Harry', 'Potter', 4),
('Ron', 'Wizli', 4),
('Draco', 'Malfoy', 1),
('Dobby', 'Elf', 2);

INSERT INTO subjects(name, teacher) VALUES
('flYing', 'Md.Truck'),
('potions', 'Severus Snape'),
('math', 'Kluchnik');

INSERT INTO exams(student_id, subject_id, grade) VALUES
(1, 1, 90),
(2, 1, 50),
(3, 3, 20),
(4, 3, 100);