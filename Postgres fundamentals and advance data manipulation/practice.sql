CREATE Table employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT REFERENCES departments(department_id),
    salary DECIMAL(10, 2),
    hire_data DATE
)


CREATE Table departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
)

INSERT INTO departments (department_name) VALUES
('Human Resources'),
('Finance'),
('Marketing'),
('Sales'),
('Engineering'),
('Customer Support'),
('IT'),
('Research and Development'),
('Operations'),
('Legal');

INSERT INTO employees (employee_name, department_id, salary, hire_data) VALUES
('Alice Johnson', 1, 55000.00, '2021-03-15'),
('Bob Smith', 2, 62000.50, '2020-06-20'),
('Charlie Davis', 3, 47000.00, '2019-11-11'),
('Diana Lewis', 4, 53000.25, '2022-01-08'),
('Ethan Wright', 5, 75000.00, '2018-09-30'),
('Fiona Lee', 6, 48000.00, '2023-05-12'),
('George Hill', 7, 69000.75, '2021-02-22'),
('Hannah Scott', 8, 58000.10, '2020-10-03'),
('Ian Walker', 9, 61000.00, '2021-12-18'),
('Jane Adams', 10, 54000.20, '2022-04-25'),
('Kevin Turner', 1, 56000.00, '2023-07-14'),
('Laura Barnes', 2, 64000.00, '2019-08-01'),
('Mike Evans', 3, 49500.00, '2020-01-05'),
('Nina Carter', 4, 52000.00, '2021-05-10'),
('Oscar Flores', 5, 80000.00, '2017-12-20'),
('Paula Rivera', 6, 47000.00, '2022-11-09'),
('Quentin Reed', 7, 70000.00, '2020-06-17'),
('Rachel Morris', 8, 60000.00, '2019-03-23'),
('Sam Bell', 9, 61000.00, '2023-08-11'),
('Tina Murphy', 10, 56000.00, '2021-09-30'),
('Uma Price', 1, 55000.00, '2020-02-12'),
('Victor Gomez', 2, 63000.00, '2022-03-01'),
('Wendy Sanders', 3, 49000.00, '2021-07-16'),
('Xander Hughes', 4, 51000.00, '2023-01-05'),
('Yara Coleman', 5, 77000.00, '2020-12-07'),
('Zane Foster', 6, 46000.00, '2022-06-19'),
('Abby Lawrence', 7, 68000.00, '2018-05-10'),
('Ben Norton', 8, 59000.00, '2019-11-29'),
('Clara Bryant', 9, 62000.00, '2021-03-04'),
('David Kennedy', 10, 55000.00, '2020-09-15');


SELECT * FROM employees;

--- Starting sql commands and some questions

-- 1. Inner join to retrieve employee and department information.
-- 2. Show department name with avarge salary.
-- 3. Count employees in each department
-- 4. find the department name with the highest average salary.
-- 5. Count Employess Hired each Year.

-- Q1. ans:-
SELECT * FROM employees
JOIN departments ON employees.department_id = departments.department_id; -- => tumi employees er sate deparments ki join koro deparment_id diye.

SELECT * FROM employees
JOIN deparments USING(department_id); -- ager motoi but ektu easy te kora hoise.. 

-- Q2. ans:-

SELECT department_name, round(avg(salary)) as avg_salary FROM employees
JOIN departments USING(department_id)
GROUP BY department_name;

-- Q3. ans:-

SELECT department_name, count(employee_id) FROM employees
JOIN departments USING(department_id)
GROUP BY department_name;

-- Q4. ans:--

SELECT department_name, round(avg(salary)) as avg_salary FROM employees
JOIN departments USING(department_id)
GROUP BY department_name
ORDER BY avg_salary DESC
LIMIT 1;

-- Q5. ans:--

SELECT extract(YEAR from hire_data) as hire_year, count(*) from employees
GROUP BY hire_year;

--- Question no:- 06
-- Find customers who have placed more than 2 orders and calculae the total amount spent by each of these customers.
-- Q6. ans:--

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2)
);

DROP TABLE orders;


INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(1, '2023-01-15', 250.75),
(2, '2023-02-20', 180.00),
(3, '2023-03-10', 320.50),
(1, '2023-04-05', 145.25),
(2, '2023-05-18', 210.00),
(3, '2023-06-22', 399.99),
(1, '2023-07-30', 175.00),
(2, '2023-08-14', 289.45),
(3, '2023-09-09', 310.00),
(1, '2023-10-27', 199.99),
(4, '2023-10-27', 199.99);

SELECT customer_id, count(order_id), sum(total_amount) from orders GROUP BY customer_id HAVING count(order_id) > 2;

--- Question no:- 07
-- Find tha total amount of orders placed each month in the year 2022.
-- Q7. ans:--

SELECT extract(MONTH FROM order_date) as MONTH, sum(total_amount)
 from orders WHERE extract(YEAR from order_date)= 2022 GROUP BY MONTH;

