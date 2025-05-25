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
--- CROSS join
SELECT title, name from book CROSS JOIN publishers;

-- Add column with table
ALTER Table publishers ADD COLUMN publisher_id SERIAL;

--- CROSS join
SELECT * from book NATURAL JOIN publishers;

-- date time

SELECT CURRENT_DATE;
SELECT EXTRACT(YEAR FROM CURRENT_DATE) as year,
 EXTRACT(MONTH FROM CURRENT_DATE) as MONTH,
 EXTRACT(YEAR FROM CURRENT_DATE) as DAY;

--  sobquery
SELECT title, price, author_name FROM book
WHERE price > (SELECT AVG(price) FROM book);

SELECT name FROM publishers WHERE id IN(
    SELECT publisher_id FROM book GROUP BY publisher_id HAVING COUNT(*) > 0
);


SELECT * FROM book JOIN publishers ON book.publisher_id = publisher_id WHERE name ILIKE '%the%'

-- view creating 
CREATE VIEW available_books
AS
SELECT * FROM book WHERE in_stock = true;

SELECT * FROM available_books;

DROP View available_books;

SELECT * FROM book;
SELECT * FROM publishers;