-- Active: 1747405674511@@127.0.0.1@5432@psql_cs


SELECT title, author FROM book;


SELECT * FROM book
WHERE in_stock = false;
SELECT * FROM book
WHERE author = 'Delia Owens';


SELECT title, LENGTH(title) FROM book;
SELECT count(*) FROM book;
SELECT count(title) FROM book;
SELECT AVG(price) FROM book;
SELECT MAX(price), min(price) FROM book;

SELECT * FROM book 
WHERE price BETWEEN 10 AND 20;
SELECT * FROM book 
WHERE title LIKE 'Be%'; --The value access in the front side
SELECT * FROM book  --- ILIKE is caseSencetive
WHERE title ILIKE '%sing'; --The value access in the back side
SELECT * FROM book  --- ILIKE is caseSencetive
WHERE title ILIKE '%sing%'; --The value can be in the front, in the middle, or even in the last. 

SELECT * FROM book
WHERE author IN('Delia Owens', 'Tara Westover'); --I go to find a lot of value with IN.

SELECT title, price FROM book
WHERE author IN('Delia Owens', 'Tara Westover'); --I go to find a lot of value with IN.

SELECT * FROM book
LIMIT 3;  --- showing the 3 data
SELECT * FROM book
LIMIT 3 OFFSET 4; --First skip 4 data and then 3 data shows

-- UPDATE data
UPDATE book SET price = price*1.10;

SELECT author, count(*) FROM book GROUP BY author; --showing data in row wise
SELECT author, count(*) FROM book GROUP BY author HAVING COUNT(*)>1; --Give me the data of all those authors who have written more than 1 book. || having is filtaring 


ALTER Table book DROP constraint book_publisher_id_fkey; ---Deleting the main data from the Publishers table will not delete the foreign data in the Book table

ALTER TABLE book
ADD CONSTRAINT book_publisher_id_fkey
FOREIGN KEY (publisher_id)
REFERENCES publishers(id)
ON DELETE CASCADE;


DELETE FROM publishers WHERE id = 1;

SELECT * FROM book;
SELECT * FROM publishers;
