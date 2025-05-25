CREATE VIEW dept_avg_salary AS ---Wherever we need the salary value in this place, we will get it by simply calling the view Dept_Avig_Salary.
SELECT department_name, avg(salary) FROM employeers GROUP BY department_name;

SELECT * FROM dept_avg_salary;

-- Why to use view ----
-- 1. Simplifying complex queries
-- 2. Improved security
-- 3. Enhanced data abstraction..