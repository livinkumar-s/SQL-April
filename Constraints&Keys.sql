use student;

CREATE TABLE studentDetails (
id int primary key auto_increment,
email varchar(50) NOT NULL UNIQUE,
phone char(10) NOT NULL UNIQUE,
isPassed bool DEFAULT 1,
totalPresent int CHECK (totalPresent>200),
studentId int,

FOREIGN KEY (studentId) references studentBasic(studentId) 
);

DROP TABLE studentDetails;


select * from studentbasic;
select * from studentDetails;

INSERT INTO studentDetails (email, phone, totalPresent, studentId)
value 
("vj@gmail.com","8975648965", 250, 1);
INSERT INTO studentDetails (email, phone, totalPresent, studentId)
value 
("sr@gmail.com","9975648965", 240, 2);
INSERT INTO studentDetails (email, phone, totalPresent, studentId, isPassed)
value 
("sb@gmail.com","9375648965", 201, 7,0);
INSERT INTO studentDetails (email, phone, totalPresent, studentId, isPassed)
value 
("ak@gmail.com","8885648965", 288, 3,0);

