
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(50) NOT NULL,
    salary NUMERIC(10, 2) NOT NULL,
    bankAccount VARCHAR(20) NOT NULL,
    bankName VARCHAR(50) NOT NULL
);

insert into employees (name, position, salary, bankAccount, bankName) values
('John Doe', 'Software Engineer', 75000.00, '1234567890', 'Bank of America'),
('Jane Smith', 'Project Manager', 85000.00, '0987654321', 'Chase Bank'),
('Emily Davis', 'Data Analyst', 65000.00, '1122334455', 'Wells Fargo'),
('Michael Brown', 'UX Designer', 70000.00, '5566778899', 'Citibank'),
('Sarah Wilson', 'HR Specialist', 60000.00, '6677889900', 'Capital One'),
('David Lee', 'Marketing Manager', 80000.00, '3344556677', 'PNC Bank'),
('Laura Garcia', 'Sales Representative', 55000.00, '7788990011', 'TD Bank'),
('James Miller', 'Financial Analyst', 72000.00, '2233445566', 'US Bank'),
('Olivia Martinez', 'Customer Support', 50000.00, '8899001122', 'BB&T Bank'),
('William Anderson', 'Operations Manager', 90000.00, '4455667788', 'SunTrust Bank');

insert into employees (name, position, salary, bankAccount, bankName) values
('Sophia Taylor', 'Software Engineer', 78000.00, '1234509876', 'Bank of America'),
('Liam Johnson', 'Project Manager', 88000.00, '0987605432', 'Chase Bank'),
('Mia Martinez', 'Data Analyst', 67000.00, '1122309876', 'Wells Fargo'),
('Noah Wilson', 'UX Designer', 72000.00, '5566709876', 'Citibank'),
('Ava Brown', 'HR Specialist', 62000.00, '6677809876', 'Capital One'),
('Ethan Davis', 'Marketing Manager', 82000.00, '3344509876', 'PNC Bank'),
('Isabella Garcia', 'Sales Representative', 57000.00, '7788909876', 'TD Bank'),
('Mason Miller', 'Financial Analyst', 74000.00, '2233409876', 'US Bank'),
('Amelia Anderson', 'Customer Support', 52000.00, '8899009876', 'BB&T Bank'),
('Logan Lee', 'Operations Manager', 92000.00, '4455609876', 'SunTrust Bank');

CREATE VIEW employeeview as select name, position from employees;
CREATE OR REPLACE VIEW employeeview as select id, name, position from employees;

select * from employeeview;