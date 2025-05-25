-- Active: 1747405674511@@127.0.0.1@5432@psql_cs
CREATE DATABASE psql_cs;

CREATE TABLE publishers(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

INSERT INTO publishers (name) VALUES
('Penguin Random House'),
('HarperCollins'),
('Simon & Schuster'),
('Macmillan Publishers'),
('Hachette Book Group'),
('Scholastic'),
('Pearson'),
('Oxford University Press'),
('Cambridge University Press'),
('McGraw-Hill Education');

SELECT * FROM publishers;
DROP TABLE publishers;


CREATE TABLE book (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    author_name TEXT,
    published_year INT,
    price NUMERIC(6, 2),
    in_stock BOOLEAN,
    publisher_id INT,
    FOREIGN KEY (publisher_id) REFERENCES publishers(id)
);

INSERT INTO book (title, author_name, published_year, price, in_stock, publisher_id) VALUES
('The Silent Patient', 'Alex Michaelides', 2019, 15.99, TRUE, 1),
('Educated', 'Tara Westover', 2018, 13.50, TRUE, 2),
('Where the Crawdads Sing', 'Delia Owens', 2018, 14.20, TRUE, 3),
('Becoming', 'Michelle Obama', 2018, 17.99, TRUE, 4),
('Atomic Habits', 'James Clear', 2018, 11.95, TRUE, 5),
('The Alchemist', 'Paulo Coelho', 1988, 9.99, TRUE, 6),
('Sapiens', 'Yuval Noah Harari', 2011, 19.99, TRUE, 7),
('The Great Gatsby', 'F. Scott Fitzgerald', 1925, 7.99, FALSE, 8),
('1984', 'George Orwell', 1949, 6.50, TRUE, 9),
('To Kill a Mockingbird', 'Harper Lee', 1960, 8.75, FALSE, NULL);

DROP TABLE book;
SELECT * FROM book;
