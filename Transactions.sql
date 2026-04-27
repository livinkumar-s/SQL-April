use student;
select * from studenothers;

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


DELETE FROM studenothers where studId=19;
TRUNCATE TABLE studenothers;

COMMIT;
ROLLBACK;

set autocommit=0;
select @@autocommit;


CREATE TABLE bankAccounts (
    accountId INT PRIMARY KEY AUTO_INCREMENT,
    accountName VARCHAR(255) NOT NULL,
    balance DECIMAL(10, 2) NOT NULL
);

INSERT INTO bankAccounts (accountName, balance) VALUES
('Alice', 1000.00),
('Bob', 1500.00),
('Charlie', 2000.00),
('David', 2500.00),
('Eve', 3000.00);

CREATE TABLE transactions (
    transactionId INT PRIMARY KEY AUTO_INCREMENT,
    fromAccountId INT NOT NULL,
    toAccountId INT NOT NULL,
    amount DECIMAL(10, 2) NOT NULL
);


select * from bankAccounts;
select * from transactions;
select accountName, IF(balance>=2000,"ok","not ok") as status from bankAccounts;

START TRANSACTION;
INSERT INTO transactions 
(fromAccountId,toAccountId,amount) value (2,3,100);
SAVEPOINT s1;
UPDATE bankAccounts set balance=balance-100 where accountId=2;
UPDATE bankAccounts set balance=balance+100 where accountId=30;
ROLLBACK;
COMMIT;

DELIMITER $$

CREATE PROCEDURE select_employees(IN numOfRows INT)
BEGIN

IF numOfRows>3 THEN
select * from employees limit numOfRows;
else
select "range should be greater than 3";
END IF;

END $$

DELIMITER ;

DROP PROCEDURE transferfund;

CALL select_employees(30);


DELIMITER $$

CREATE PROCEDURE transferFund(IN fromId INT, IN toId INT, IN amount Float)
BEGIN

START TRANSACTION;
INSERT INTO transactions 
(fromAccountId,toAccountId,amount) value (fromId,toId,amount);
SAVEPOINT s1;
UPDATE bankAccounts set balance=balance-amount where accountId=fromId;
UPDATE bankAccounts set balance=balance+amount where accountId=toId;

IF row_count()=0 THEN
ROLLBACK to s1;
ELSE COMMIT;
END IF;

END $$

DELIMITER ;


UPDATE bankAccounts set balance=balance+100 where accountId=3;
select row_count();



select * from bankAccounts;
select * from transactions;

call transferfund(4,2,100);