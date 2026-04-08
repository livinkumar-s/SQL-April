USE student;
SELECT * from studentbasic;

UPDATE studentbasic SET age=54 where studentId=9;

SELECT * FROM studentbasic WHERE age BETWEEN 45 AND 50;

SELECT * from studentbasic where studentId>5 or age>50;

SELECT * FROM studentbasic WHERE NOT age>50; 

SELECT * FROM studentbasic WHERE age=30 or age=31 or age=33 or 
age=43 or age=45 or age=46 or age=50 or age=51 or age=53 or 
age=73 or age=80;

SELECT * FROM studentbasic 
WHERE age not in (30,31,33,43,45,46,50,51,53,73,80);

SELECT * FROM studentbasic WHERE name LIKE "%n";
SELECT * FROM studentbasic WHERE name LIKE "%v%n%";
SELECT * FROM studentbasic WHERE name LIKE "% %" and age<50;


