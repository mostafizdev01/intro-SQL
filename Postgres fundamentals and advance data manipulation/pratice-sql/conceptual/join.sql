-- Active: 1747405674511@@127.0.0.1@5432@psql_cs

-- Join

--- Inner join
SELECT title, name from book INNER JOIN publishers ON book.publisher_id = publishers.id; -- only get the book.publisher_id and publishers.id match data.

--- left join
SELECT title, name from book LEFT JOIN publishers ON book.publisher_id = publishers.id;

--- right join
SELECT title, name from book RIGHT JOIN publishers ON book.publisher_id = publishers.id;


--- full join
SELECT title, name from book FULL JOIN publishers ON book.publisher_id = publishers.id;

-- date time

SELECT CURRENT_DATE;
SELECT EXTRACT(YEAR FROM CURRENT_DATE) as year,
 EXTRACT(MONTH FROM CURRENT_DATE) as MONTH,
 EXTRACT(YEAR FROM CURRENT_DATE) as DAY;

SELECT * FROM book;
SELECT * FROM publishers;