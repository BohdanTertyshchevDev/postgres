SELECT * FROM users;

SELECT first_name, last_name, is_subscribe FROM users WHERE is_subscribe = TRUE;

SELECT * FROM users WHERE id % 2 = 0;

SELECT * FROM users WHERE height > 1.5;

SELECT * FROM users WHERE is_subscribe = true AND gender = 'male';