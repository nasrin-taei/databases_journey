SELECT "firstName",
       "lastName",
       age,
       CASE
           WHEN married = true THEN 'MARRIED'
           WHEN married = false THEN 'SINGLE'
           END married,
       id
FROM users;

SELECT "firstName",
       "lastName",
       age,
       CASE
           WHEN married = true THEN 'MARRIED'
           WHEN married = false THEN 'SINGLE'
           ELSE 'NOT_FOUND'
           END married,
       id
FROM users; -- One of CASE WHEN use cases are to convert data in SELECT statement e.g. "married" COLUMN converted from boolean to varchar.


SELECT *
FROM users
WHERE 'MARRIED' = 'MARRIED';

SELECT *
FROM users
WHERE 2 = 2;

SELECT *
FROM users
WHERE 'MARRIED' = 'SINGLE';

SELECT *
FROM users
WHERE 'MARRIED' = CASE
                      WHEN married = true THEN 'MARRIED'
                      WHEN married = false THEN 'SINGLE'
                      ELSE 'NOT_FOUND'
    END; -- Another use case is when converting data is needed in WHERE CLAUSE based on desired VALUES e.g 'MARRIED'.MARRIED=MARRIED