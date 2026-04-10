use student;
SELECT name as studentName, age as studentAge from studentbasic;

SELECT 56 as res;
SELECT ROUND(9.5) as res;
SELECT FLOOR(9.9999999) as res;
SELECT CEIL(9.000000001) as res;
SELECT MOD(4,5) as res;
SELECT ABS(-9), POWER(4,5);
SELECT FLOOR(SQRT(5)) as res;


SELECT length(CONCAT("Hello", " ", "World", "...!")) as res;
SELECT UPPER("fgfufguyhf"), lower("JHGJUHG");
SELECT REPLACE("hello hello hello world", "hello","hi") as res;
SELECT TRIM("     hello guys       ");
SELECT SUBSTRING("Good Morning", 6, 7) as res;

SELECT curdate();
SELECT curtime();
select now();
select datediff("2026-05-01", curdate());

select * from studentbasic;

SELECT
CONCAT('His name is ', UPPER(name), '. He is ', age, ' years old...!')
 AS details
FROM studentbasic;
