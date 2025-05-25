-- Active: 1747405674511@@127.0.0.1@5432@psql_cs@public
ALTER Table book add COLUMN genre TEXT;

ALTER Table book DROP COLUMN genre;

ALTER Table book ADD COLUMN in_stock BOOLEAN DEFAULT true;

ALTER TABLE book RENAME COLUMN author_name to author;

SELECT * FROM book;