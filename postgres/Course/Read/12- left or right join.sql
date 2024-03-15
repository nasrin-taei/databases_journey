SELECT *
FROM users
         JOIN customers ON users.id = customers.user_id;

SELECT *
FROM users
         LEFT JOIN customers on users.id = customers.user_id;

SELECT *
FROM users
         LEFT JOIN customers on users.id = customers.user_id
WHERE customers.id is not null;

SELECT *
FROM customers
         RIGHT JOIN users on users.id = customers.user_id;


SELECT *,
       CASE
           WHEN customers.id IS NULL THEN 'REGISTRATION'
           ELSE 'LOG IN' END
FROM customers
         RIGHT JOIN users on users.id = customers.user_id;