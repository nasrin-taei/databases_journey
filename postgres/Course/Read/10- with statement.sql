SELECT *
FROM diary
         JOIN diary_pages  on diary.id = diary_pages.diary_id
         JOIN users ON diary.user_id = users.id
WHERE users.married = true;

SELECT *
FROM diary
         JOIN diary_pages dp on diary.id = dp.diary_id
         JOIN (SELECT *
               FROM users
               WHERE married = true) A ON diary.user_id = A.id;


WITH married_users AS (SELECT *
                       FROM users
                       WHERE married = true),
     travel_pages AS (SELECT *
                      FROM diary_pages
                      WHERE context like '%سفر%')
SELECT *
FROM diary
         JOIN travel_pages dp on diary.id = dp.diary_id
         JOIN married_users ON married_users.id = diary.user_id;
