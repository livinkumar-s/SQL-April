USE student;

CREATE TABLE studenOthers (
studId int primary key auto_increment,
name varchar(50) not null,
marks int not null,
dept varchar(20) not null
);

INSERT INTO studenOthers (name, marks, dept) VALUES
('Alice', 12, 'Computer Science'),
('Bob', 78, 'Mathematics'),
('Charlie', 92, 'Physics'),
('David', 77, 'Computer Science'),
('Eve', 90, 'Physics'),
('Frank', 80, 'Mathematics'),
('Grace', 95, 'Computer Science'),
('Heidi', 82, 'Physics'),
('Ivan', 87, 'Mathematics'),
('Judy', 47, 'Computer Science'),
('Karl', 89, 'Physics'),
('Leo', 84, 'Mathematics'),
('Mallory', 97, 'Computer Science'),
('Nina', 86, 'Physics'),
('Oscar', 79, 'Mathematics'),
('Peggy', 55, 'Computer Science'),
('Quentin', 81, 'Physics'),
('Ruth', 88, 'Mathematics'),
('Sam', 66, 'Computer Science'),
('Trudy', 83, 'Physics');

select * from studenothers;

select avg(marks) from studenothers;

select * from studenothers where 
marks>(select avg(marks) from studenothers);

select marks from studenothers where dept='Computer Science';

select * from studenothers where
marks > any (select marks from studenothers where dept='Physics');

select name, marks, (select avg(marks) from studenothers) as avgMarks
 from studenothers;
 
 
select * from studenothers s1 where 
marks > 
(select avg(marks) from studenothers where dept=s1.dept);
