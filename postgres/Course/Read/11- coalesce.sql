SELECT *
FROM new_users;

SELECT "firstName",
       "lastName",
       age,
       married,
       id,
       CASE
           WHEN birthday is null THEN 'N/A'
           ELSE birthday END birthday
FROM new_users;

SELECT "firstName",
       "lastName",
       age,
       married,
       id,
       COALESCE(birthday, 'N/A') birthday -- COALESCE finds the first value in the arguments which is not NULL.
FROM new_users;

