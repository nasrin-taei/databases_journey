SELECT * FROM first_db.course.users;

SELECT DISTINCT "firstName" FROM first_db.course.users; -- Select distinct values for columns

SELECT DISTINCT ("firstName", "lastName") FROM first_db.course.users;

SELECT sum(age) FROM first_db.course.users; -- Aggregation function has only & only one result

SELECT count(age) FROM first_db.course.users;

SELECT count(*)  FROM first_db.course.users;

SELECT avg(age) FROM first_db.course.users;

SELECT  SUM(age) * count(age) FROM first_db.course.users;

SELECT min(age) FROM first_db.course.users;

SELECT max(age) FROM first_db.course.users;

SELECT max(age), min(age), avg(age), count(age) FROM first_db.course.users;

SELECT max(age) "oldest", min(age) AS "youngest", avg(age), count(age) FROM first_db.course.users; -- Alias definition for column names



