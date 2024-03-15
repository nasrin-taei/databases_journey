SELECT * FROM first_db.course.users
ORDER BY age ASC; -- Ascending

SELECT * FROM first_db.course.users
ORDER BY age DESC; -- Descending

SELECT * FROM first_db.course.users
ORDER BY age DESC, "lastName" ASC;