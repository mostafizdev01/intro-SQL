-- Active: 1747405674511@@127.0.0.1@5432@ph
CREATE Table employeers(
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
)

INSERT INTO employeers (employee_name, department_name, salary, hire_date) VALUES
('Alice Johnson', 'Human Resources', 52000.00, '2021-03-15'),
('Bob Smith', 'Finance', 61000.00, '2020-06-20'),
('Catherine Lee', 'Marketing', 48000.00, '2022-02-10'),
('Daniel Kim', 'Sales', 55000.00, '2019-07-01'),
('Ella Brown', 'Engineering', 78000.00, '2021-09-25'),
('Frank White', 'IT', 69000.00, '2020-01-10'),
('Grace Hall', 'Customer Support', 43000.00, '2023-04-18'),
('Henry Adams', 'Legal', 60000.00, '2022-05-12'),
('Ivy Nelson', 'Operations', 57000.00, '2018-11-23'),
('Jack Davis', 'Research and Development', 85000.00, '2019-10-10'),
('Kylie Moore', 'Human Resources', 54000.00, '2020-12-01'),
('Leo Clark', 'Finance', 63000.00, '2023-03-05'),
('Mia Allen', 'Marketing', 49000.00, '2021-06-14'),
('Noah Wright', 'Sales', 58000.00, '2020-08-20'),
('Olivia Hill', 'Engineering', 79000.00, '2022-07-09'),
('Paul Walker', 'IT', 71000.00, '2021-05-03'),
('Quinn Scott', 'Customer Support', 44000.00, '2023-01-30'),
('Ruby King', 'Legal', 62000.00, '2019-02-28'),
('Steve Green', 'Operations', 59000.00, '2022-06-15'),
('Tina Lewis', 'Research and Development', 86000.00, '2020-10-07'),
('Umar Cox', 'Human Resources', 53000.00, '2021-08-16'),
('Vera Brooks', 'Finance', 64000.00, '2019-09-21'),
('Will Reed', 'Marketing', 50000.00, '2020-04-12'),
('Xena Turner', 'Sales', 57000.00, '2023-02-25'),
('Yusuf Price', 'Engineering', 80000.00, '2021-12-19'),
('Zara Murphy', 'IT', 72000.00, '2022-11-11'),
('Adam Bailey', 'Customer Support', 45000.00, '2020-03-17'),
('Bella Foster', 'Legal', 61000.00, '2023-05-22'),
('Caleb Griffin', 'Operations', 60000.00, '2021-11-05'),
('Daisy Perry', 'Research and Development', 87000.00, '2019-06-13');

SELECT * from employeers;
DROP Table employeers;

-- Retrieve all employees whose salary is greater then the highest salary of the Finance department

SELECT max(salary) FROM employeers WHERE department_name = 'Finance';  --640000

SELECT * from employeers WHERE salary > (SELECT max(salary) FROM employeers WHERE department_name = 'Finance');

SELECT *, (SELECT sum(salary) from employeers) from employeers;
SELECT department_name, (SELECT sum(salary) from employeers) from employeers GROUP BY department_name;