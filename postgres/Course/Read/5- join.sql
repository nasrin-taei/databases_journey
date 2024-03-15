SELECT *
FROM diary;

SELECT *
FROM diary
         JOIN users ON diary.user_id = users.id;

SELECT "firstName", "lastName"
FROM users
WHERE users IN (1, 2);

SELECT count(*)
FROM diary
         JOIN users ON diary.user_id = users.id;

SELECT "lastName", count(*)
FROM diary
         JOIN users ON diary.user_id = users.id
GROUP BY "lastName";

SELECT "lastName", count(*)
FROM diary
         JOIN users ON diary.user_id = users.id
GROUP BY "lastName";

SELECT *
FROM diary
         JOIN users ON diary.user_id = users.id
WHERE "lastName" like '%n%';

SELECT age
FROM diary
         JOIN users ON diary.user_id = users.id
WHERE "lastName" like '%n%';

SELECT "lastName", max(age)
FROM diary
         JOIN users ON diary.user_id = users.id
WHERE married = TRUE
GROUP BY "lastName";


SELECT "lastName", max(age)
FROM diary
         JOIN users ON diary.user_id = users.id
WHERE married = TRUE
GROUP BY "lastName";


SELECT "firstName", "lastName", count(*)
FROM diary
         JOIN users ON diary.user_id = users.id
GROUP BY "firstName", "lastName";

SELECT *
FROM users
         JOIN customers ON users.id = customers.user_id;

SELECT *
FROM users
         JOIN customers ON users."firstName" = customers.name;

SELECT *
FROM users
         JOIN customers ON users."firstName" = customers.name AND users."lastName" = customers.family_name;

SELECT * FROM diary JOIN diary_pages dp ON diary.id = dp.diary_id;

SELECT title, count(*) FROM diary JOIN diary_pages dp ON diary.id = dp.diary_id
GROUP BY title;

SELECT title, max(number) FROM diary JOIN diary_pages dp ON diary.id = dp.diary_id
GROUP BY title;



