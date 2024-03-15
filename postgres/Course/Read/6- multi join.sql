SELECT *
FROM users
         JOIN diary ON users.id = diary.user_id;

SELECT *
FROM users
         JOIN diary ON users.id = diary.user_id
WHERE "firstName" = 'nasrin';

SELECT *
FROM users
         JOIN diary ON users.id = diary.user_id
         JOIN diary_pages ON diary.id = diary_pages.diary_id;

SELECT "firstName", title, number, context
FROM users
         JOIN diary ON users.id = diary.user_id
         JOIN diary_pages ON diary.id = diary_pages.diary_id
WHERE "firstName" = 'nasrin';


SELECT "firstName", title, number, context
FROM users
         JOIN diary ON users.id = diary.user_id
         JOIN diary_pages ON diary.id = diary_pages.diary_id;

SELECT "lastName", count(*)
FROM users
         JOIN diary ON users.id = diary.user_id
         JOIN diary_pages ON diary.id = diary_pages.diary_id
GROUP BY "lastName";

SELECT "lastName", count(*)
FROM users
         JOIN diary ON users.id = diary.user_id
         JOIN diary_pages ON diary.id = diary_pages.diary_id
WHERE "lastName" = 'norouzi'
GROUP BY "lastName";

