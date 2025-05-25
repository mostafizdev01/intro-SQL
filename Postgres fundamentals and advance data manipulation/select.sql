CREATE Table students ( 
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dop DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

SELECT email, age, country FROM students;   ---- i want to see email, age, country value in students table

-- genarate 50 data in students tabale 

INSERT INTO students (first_name, last_name, age, grade, course, email, dop, blood_group, country) VALUES
('Arif', 'Hasan', 20, 'A+', 'Math', 'kicunaitovai@gmail.com', '2023-09-01', 'O+', 'Bangladesh'),
('Nusrat', 'Jahan', 22, 'B+', 'Physics', '', '2023-06-12', 'A-', 'Bangladesh'),
('Rafi', 'Khan', 19, 'A', 'Chemistry', 'rafi@example.com', '2024-01-15', 'B+', 'Bangladesh'),
('Mithila', 'Sultana', 21, 'C', 'Biology', 'mithila@example.com', '2023-05-05', 'O-', 'Bangladesh'),
('Tanvir', 'Ahmed', 23, 'B-', 'Math', 'tanvir@example.com', '2023-03-10', 'AB+', 'India'),
('Salma', 'Akter', 20, 'A+', 'Physics', 'salma@example.com', '2023-08-20', 'A+', 'Nepal'),
('Sajid', 'Rahman', 21, 'B', 'Biology', 'sajid@example.com', '2024-02-01', 'O+', 'Bangladesh'),
('Labiba', 'Haque', 22, 'A-', 'Math', 'labiba@example.com', '2023-07-07', 'B-', 'Bangladesh'),
('Farhan', 'Islam', 20, 'C+', 'Chemistry', 'farhan@example.com', '2023-12-12', 'O+', 'Bangladesh'),
('Mehzabin', 'Chowdhury', 19, 'A+', 'Physics', 'mehzabin@example.com', '2023-04-04', 'AB-', 'Bangladesh'),
('Joy', 'Das', 21, 'B+', 'Math', 'joy@example.com', '2023-11-11', 'A+', 'India'),
('Rima', 'Khatun', 20, 'C', 'Biology', 'rima@example.com', '2023-10-10', 'O-', 'Nepal'),
('Arefin', 'Hossain', 22, 'A', 'Chemistry', 'arefin@example.com', '2024-03-03', 'B+', 'Bangladesh'),
('Zara', 'Rahman', 19, 'B-', 'Math', 'zara@example.com', '2023-09-09', 'A-', 'Bangladesh'),
('Nabil', 'Karim', 23, 'C+', 'Physics', 'nabil@example.com', '2023-06-06', 'AB+', 'Bangladesh'),
('Tania', 'Akter', 21, 'B', 'Biology', 'tania@example.com', '2023-05-15', 'O+', 'Bangladesh'),
('Shuvo', 'Mia', 20, 'A-', 'Chemistry', 'shuvo@example.com', '2024-01-01', 'B-', 'Bangladesh'),
('Priya', 'Roy', 22, 'A+', 'Math', 'priya@example.com', '2023-07-21', 'O+', 'Bangladesh'),
('Kamal', 'Uddin', 19, 'C', 'Physics', 'kamal@example.com', '2023-02-02', 'AB-', 'India'),
('Niloy', 'Haque', 21, 'B+', 'Biology', 'niloy@example.com', '2023-08-08', 'A+', 'Bangladesh'),
('Sumaiya', 'Siddique', 20, 'A', 'Chemistry', 'sumaiya@example.com', '2023-03-30', 'O-', 'Bangladesh'),
('Rohan', 'Chowdhury', 22, 'B-', 'Math', 'rohan@example.com', '2023-11-22', 'AB+', 'Nepal'),
('Lamia', 'Rahman', 21, 'C+', 'Physics', 'lamia@example.com', '2023-01-20', 'B+', 'Bangladesh'),
('Nayeem', 'Islam', 20, 'A+', 'Biology', 'nayeem@example.com', '2024-02-28', 'A-', 'Bangladesh'),
('Sharmin', 'Sultana', 19, 'B', 'Chemistry', 'sharmin@example.com', '2023-12-01', 'O+', 'Bangladesh'),
('Rayhan', 'Ali', 23, 'A-', 'Math', 'rayhan@example.com', '2023-06-06', 'B-', 'Bangladesh'),
('Moumita', 'Das', 21, 'C', 'Physics', 'moumita@example.com', '2023-05-17', 'O+', 'India'),
('Asif', 'Hossain', 20, 'B+', 'Biology', 'asif@example.com', '2023-09-13', 'AB-', 'Bangladesh'),
('Tumpa', 'Akter', 22, 'A', 'Chemistry', 'tumpa@example.com', '2023-07-30', 'A+', 'Bangladesh'),
('Jamil', 'Rahman', 19, 'B-', 'Math', 'jamil@example.com', '2023-04-25', 'O-', 'Nepal'),
('Afia', 'Begum', 21, 'C+', 'Physics', 'afia@example.com', '2023-03-12', 'AB+', 'Bangladesh'),
('Reaz', 'Ahmed', 20, 'B', 'Biology', 'reaz@example.com', '2023-10-05', 'A+', 'Bangladesh'),
('Moni', 'Khatun', 22, 'A-', 'Chemistry', 'moni@example.com', '2023-01-13', 'O+', 'Bangladesh'),
('Hasib', 'Mia', 21, 'C', 'Math', 'hasib@example.com', '2023-02-23', 'B+', 'Bangladesh'),
('Nasrin', 'Sultana', 20, 'B+', 'Physics', 'nasrin@example.com', '2023-08-15', 'A-', 'India'),
('Shakil', 'Islam', 23, 'A', 'Biology', 'shakil@example.com', '2023-09-19', 'O-', 'Bangladesh'),
('Mahia', 'Rahman', 21, 'B-', 'Chemistry', 'mahia@example.com', '2024-01-25', 'AB+', 'Bangladesh'),
('Ovi', 'Khan', 20, 'C+', 'Math', '', '2023-06-01', 'B+', 'Bangladesh'),
('Maya', 'Chowdhury', 19, 'B', 'Physics', 'maya@example.com', '2023-07-14', 'O+', 'Bangladesh'),
('Imran', 'Hasan', 22, 'A+', 'Biology', 'imran@example.com', '2023-10-09', 'A-', 'Bangladesh'),
('Sadia', 'Akter', 21, 'B-', 'Chemistry', 'sadia@example.com', '2023-11-03', 'AB-', 'Bangladesh'),
('Fahim', 'Hossain', 20, 'C', 'Math', 'fahim@example.com', '2023-12-20', 'O+', 'Bangladesh'),
('Rupa', 'Roy', 23, 'B+', 'Physics', 'rupa@example.com', '2023-05-22', 'A+', 'India'),
('Jannat', 'Sultana', 21, 'A', 'Biology', 'jannat@example.com', '2023-04-10', 'O-', 'Bangladesh'),
('Tariq', 'Rahman', 20, 'B-', 'Chemistry', 'tariq@example.com', '2023-03-15', 'B+', 'Bangladesh'),
('Nabila', 'Hasan', 22, 'C+', 'Math', 'nabila@example.com', '2023-02-05', 'A-', 'Bangladesh'),
('Raihan', 'Ali', 19, 'B', 'Physics', 'raihan@example.com', '2023-01-28', 'AB+', 'Nepal'),
('Sinthia', 'Rahman', 21, 'A-', 'Biology', 'sinthia@example.com', '2024-02-12', 'O+', 'Bangladesh'),
('Tamim', 'Iqbal', 20, 'B+', 'Chemistry', 'tamim@example.com', '2023-09-27', 'A+', 'Bangladesh');


SELECT * FROM students;

--- sapous ami email column k studentEamail column a dekhte chai,,


SELECT email as student_Eamil FROM students;

--- sort any column in table

SELECT * FROM students ORDER BY age DESC;  --- j kono column k amara sort korte pari sudu column name ta change korte hobe...

SELECT country FROM students ORDER BY country ASC;


 --- amra jodi dekhte chai amader unic koita column ase,,,
SELECT DISTINCT country FROM students;
SELECT DISTINCT blood_group FROM students;


--- we are get conditionaly filtaring data

SELECT * FROM students WHERE country = 'India';

--- we are get duble conditionaly filtaring data
SELECT * FROM students WHERE country = 'India' AND course = 'Math';

-- Filtaring OR keyword in table

SELECT * FROM students WHERE country = 'Nepal' OR country = 'India';

--- kono country 'usa' or 'canada' and age = 20. amon kicu data amake dau...

SELECT * FROM students WHERE (country = 'Nepal' OR country = 'India') and age = 20;

--- select students older then 20

SELECT * FROM students WHERE age > 21;
SELECT * FROM students WHERE age < 21;
SELECT * FROM students WHERE age >= 21 AND course = 'Math';

-- tumi amake ai column bade sob column er data dau...
SELECT * FROM students WHERE age <> 20;  --- amake 20 badye all data diyese... ai vabe ami chaile sob column k check kore nite pari..

SELECT * FROM students WHERE age <> 20 AND country = 'Bangladesh';


--- ami ekta column er data capital a chai

SELECT upper(first_name)  from students;
SELECT length(first_name)  from students;

-- get the avarage age
SELECT avg(age)  from students;

-- get the max age
SELECT max(age)  from students;
-- get the sum age
SELECT sum(age)  from students;
SELECT max(length(first_name))  from students;
-- get the count age
SELECT count(*)  from students;
SELECT concat(first_name, ' ', last_name) from students;
SELECT * FROM students;

--- when to use NOT

SELECT * FROM students 
 WHERE NOT country = 'Bangladesh';

 SELECT NULL = 1;


 SELECT * FROM students
  WHERE email IS NOT NULL;  --- j sob user er email null noy tader data gula amake dibe

   SELECT * FROM students
  WHERE email IS NULL; -- j sob user er email null tader data gula amake dibe..

SELECT COALESCE(email, 'Email not provided') from students; -- coalesce mane email field e kothau jodi null pai taile (email not provided) ai man ta bosaibe..


SELECT * FROM students WHERE country = 'USA' or country = 'UK' or country = 'Canada'

--- find to the easy way
SELECT * FROM students WHERE country IN ('Nepal', 'India'); --- and ekhane ami chaile r o ekta gula desh er nam dite pari..

SELECT * FROM students WHERE country NOT IN ('Nepal', 'Bangladesh'); --- and ekhane ami chaile r o ekta gula desh er nam dite pari..

SELECT * FROM students 
WHERE age BETWEEN 19 and 21;

--- get the date
SELECT * FROM students 
WHERE dop BETWEEN '2023-01-02' and '2024-01-02' ORDER BY dop;


--LIKE use kore amra amon kicu keyword khujbo jader ses a am thakbe...

SELECT * FROM students 
  WHERE first_name LIKE '%ma'
  
SELECT * FROM students 
  WHERE first_name LIKE 'A%' --- LIKE is case censitive

SELECT * FROM students 
  WHERE first_name LIKE '__a%'


SELECT * FROM students 
  WHERE first_name ILIKE 'a%' --- ILIKE is case insative

  SELECT * FROM students LIMIT 5;

  SELECT * FROM students LIMIT 5 OFFSET 3;


  --- Delete filtaring column

   DELETE FROM students
      WHERE grade = 'B';

   DELETE FROM students
      WHERE grade = 'B' AND country='Bangladesh';

  --- Upadate filtaring column
UPDATE students
SET email = 'example@gmail.com'
WHERE student_id = 394;  -- amara jodi where use kore user fixed na kori taile table er sob student er info change hoye jabe.


SHOW TIMEZONE;

SELECT now();
SELECT now()::date;
SELECT now()::time;

create table timeZ(ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone)

INSERT INTO timeZ VALUES('2025-01-12 10:45:00', '2025-04-11 10:45:00')

SELECT * from timez;

SELECT CURRENT_DATE;
SELECT to_char(now(), 'yyyy/mm/dd');
SELECT to_char(now(), 'dd-mm-yyyy');
SELECT to_char(now(), 'Month');

SELECT CURRENT_DATE - INTERVAL '1 year 2 month';

SELECT age(CURRENT_DATE, '2004-11-06');

SELECT *, age(CURRENT_DATE, dop) FROM students;
SELECT extract(day FROM '2024-01-25' :: date);

SELECT 0 :: BOOLEAN;

SELECT country from students
GROUP BY country;
SELECT country, count(*), avg(age) from students
GROUP BY country;

--- filter groups useing having to show only gountries with age above 20
SELECT country, count(*), avg(age) from students
GROUP BY country
HAVING avg(age) > 20
;

--- Count students born in each year

SELECT extract(year FROM dop) as birth_year, count(*)
FROM students
GROUP BY birth_year;