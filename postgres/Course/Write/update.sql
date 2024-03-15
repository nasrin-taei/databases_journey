UPDATE new_users SET birthday = 'N/A'
WHERE birthday IS NULL;

UPDATE new_users SET married = false
WHERE "firstName" = 'nasrin' AND "lastName" = 'taei';

UPDATE new_users SET age = 34, birthday = '7/7/69'
WHERE ("firstName" = 'amir arshia' AND "lastName" = 'lor') OR "firstName" = 'behnam';

UPDATE new_users SET age = 40, birthday = '7/7/52'
WHERE id = 1;