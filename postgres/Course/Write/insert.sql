-- Explicitly defines columns as parameters to pass the arguments (VALUES)
INSERT INTO new_users ("firstName", "lastName", age, married) VALUES ('amir arshia', 'lor', 5, false);
COMMIT;

INSERT INTO new_users ("lastName", age, married, birthday, "firstName") VALUES ('lor', 4, false, '6/6/98', 'mohsen');
COMMIT;

INSERT INTO new_users ("lastName", age, married, "firstName") VALUES ('lor', 10, false, 'Ali');

INSERT INTO new_users ("lastName", age, married, birthday, "firstName") VALUES ('lor', 2, false, '6/6/00', 'amir'), ('lor', 8, false ,'10/5/94', 'zahra');


-- Implicitly defines columns as parameters to pass the arguments (VALUES)

INSERT INTO new_users VALUES ('Hadi', 'Shams', 35, true, default ,'10/8/68');

INSERT INTO new_users VALUES ('Morteza', 'Hosseini', 10, false);

INSERT INTO new_users VALUES ('Hasan', 'Kamali', 15, false), ('Reza', 'Mohtashami', 20, false);