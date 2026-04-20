use student;

INSERT INTO studentbasic  VALUES (1, "Vijay", 53),(2, "Surya", 51),
(3, "Ajith", 53), (4, "Suriya", 50), (5, "Karthi", 49), (6, "Dhanush", 48), 
(7, "Simbu", 47), (8, "Vikra", 46);

INSERT INTO studentbasic (studentId, name) values (9, "Pawan Kalyan");

SELECT * FROM studentbasic;

UPDATE studentbasic SET name="Vikram" WHERE studentId=8;
delete from studentbasic;

TRUNCATE TABLE studentbasic;

SET SQL_SAFE_UPDATES=1;