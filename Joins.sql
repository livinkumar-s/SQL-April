USE student;

SELECT * from studentbasic;
SELECT * from studentdetails;


SELECT s1.name, s1.age, s2.email, s2.phone
FROM studentbasic s1 INNER JOIN
studentdetails s2 on s1.studentId = s2.studentId;

CREATE TABLE studentmarks (
    id INT PRIMARY KEY AUTO_INCREMENT,
    marks INT,
    studentId INT
);

DROP TABLE studentmarks;

INSERT INTO studentmarks (marks, studentId) VALUES (85, 1),
(90, 2),
(78, 3),
(92, 4),
(88, 5);

INSERT INTO studentmarks (marks, studentId) VALUES (35, 12);

SELECT * FROM studentbasic;


SELECT *
FROM studentbasic s1 LEFT JOIN
studentmarks s2 on s1.studentId = s2.studentId
UNION
SELECT *
FROM studentbasic s1 RIGHT JOIN
studentmarks s2 on s1.studentId = s2.studentId;

SELECT S1.name, S1.age, S2.email,S3.marks
FROM studentbasic S1
LEFT JOIN studentdetails S2
    ON S1.studentId = S2.studentId
LEFT JOIN Studentmarks S3
    ON S2.studentId = S3.studentId;
    
