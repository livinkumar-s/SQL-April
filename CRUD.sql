use student;

INSERT INTO studentbasic VALUES
(3, "Ajith", 53), (4, "Suriya", 50), (5, "Karthi", 49), (6, "Dhanush", 48), 
(7, "Simbu", 47), (8, "Vikra", 46);

INSERT INTO studentbasic (studentId, name) values (9, "Pawan Kalyan");

SELECT * FROM studentbasic WHERE name="Vikram";

UPDATE studentbasic SET age=59 WHERE name="Vikram";
