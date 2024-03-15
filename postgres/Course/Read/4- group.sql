SELECT "lastName", count(*)
FROM first_db.course.users
GROUP BY "lastName";

SELECT "lastName", "married", count("firstName")
FROM first_db.course.users
GROUP BY "lastName", "married";

SELECT "lastName", "married", max(age)
FROM first_db.course.users
GROUP BY "lastName", "married";

SELECT "lastName", "married", sum(age) "ageSum", count(*) AS "numberOfPeople", max(age) "maximumAge", min(age) "minimumAge"
FROM first_db.course.users
GROUP BY "lastName", "married";

SELECT "lastName", "married", count("lastName")
FROM first_db.course.users
GROUP BY "lastName", "married" HAVING "lastName" = 'taei';
