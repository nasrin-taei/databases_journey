SELECT *
FROM diary;

SELECT *
FROM (SELECT * FROM diary)A ;

SELECT *
FROM (SELECT title, user_id FROM diary) A;

SELECT *
FROM (SELECT title, user_id
      FROM diary
      WHERE user_id = 8) A
WHERE title = 'روزمرگی';

SELECT *
FROM users
WHERE id IN (2, 3, 8);

SELECT *
FROM users
WHERE id IN (SELECT user_id FROM diary);

SELECT DISTINCT "firstName", "lastName", age, married, users.id
FROM users
         JOIN diary ON users.id = diary.user_id;

SELECT *
FROM users
WHERE id IN (SELECT user_id
             FROM diary
             WHERE id IN (SELECT id FROM diary));