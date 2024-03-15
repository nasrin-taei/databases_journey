SELECT * FROM first_db.course.users
WHERE "firstName" = 'behrad' And age <> 34;

SELECT * FROM first_db.course.users
WHERE "firstName" = 'behrad' And age >= 31;

SELECT * FROM first_db.course.users
WHERE "firstName" = 'behrad' OR married = FALSE;

SELECT * FROM first_db.course.users
WHERE married IS NULL;

SELECT * FROM first_db.course.users
WHERE married IS false;

SELECT * FROM first_db.course.users
WHERE age IN (20, 25, 31, 30);

SELECT * FROM first_db.course.users
WHERE NOT age > 35; -- age <= 35

SELECT * FROM first_db.course.users
WHERE married IS NOT NULL;

SELECT * FROM first_db.course.users
WHERE age NOT IN (20, 25, 31, 30);

SELECT * FROM first_db.course.users
WHERE "firstName" LIKE '%a%'; --% means any character with 0 to n occurrences

SELECT * FROM first_db.course.users
WHERE "firstName" LIKE 'a%';

SELECT * FROM first_db.course.users
WHERE "firstName" NOT LIKE '%n';

SELECT * FROM first_db.course.users
WHERE "lastName" LIKE '__e_'; -- _ character stands for only one occurrence of any character

SELECT * FROM first_db.course.users
WHERE age BETWEEN 31 AND 33; -- first parameter is inclusive, second parameter is inclusive



