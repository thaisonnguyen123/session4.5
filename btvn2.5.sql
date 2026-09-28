use quan_ly;
CREATE TABLE employees (
    emp_id VARCHAR(10) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    birth_year INT NOT NULL,
    department VARCHAR(50) NOT NULL,
    salary DECIMAL(12,2) NOT NULL,
    phone VARCHAR(20)
);

INSERT INTO employees (emp_id, full_name, birth_year, department, salary, phone) 
VALUES
	('E001', 'Nguyen Van Anh', 1995, 'IT', 15000000, '0901111111'),
	('E002', 'Tran Thi Bich', 1990, 'HR', 12000000, NULL),
	('E003', 'Le Hoang Nam', 1988, 'IT', 18000000, '0902222222'),
	('E004', 'Pham Minh Anh', 1997, 'Finance', 9000000, NULL),
	('E005', 'Do Tuan Kiet', 1992, 'IT', 20000000, '0903333333'),
	('E006', 'Hoang Thi Lan', 1994, 'HR', 11000000, '0904444444'),
	('E007', 'Vo Quoc Bao', 1989, 'Marketing', 8000000, NULL),
	('E008', 'Nguyen Thi Anh Thu', 1996, 'IT', 17000000, NULL),
	('E009', 'Pham Gia Huy', 1993, 'Finance', 7000000, '0905555555'),
	('E010', 'Bui Thanh An', 1991, 'HR', 13000000, NULL);

SELECT *
FROM employees
WHERE salary BETWEEN 10000000 AND 20000000;

select * 
from employees
where department in ("IT","HR");

select *
from employees
where full_name like	"%Anh%";

SET SQL_SAFE_UPDATES = 0;

update employees
set salary  = salary  * 1.1
where department = "IT";



