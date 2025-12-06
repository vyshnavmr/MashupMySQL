INSERT INTO books (id, title, author, price, stock_status, genre) 
VALUES(1, 'The Silent Patient', 'Alex Michaelides', 350, 'In Stock', 'Thriller'),(2, 'Atomic Habits', 'James Clear', 499, 'In Stock', 'Self-Help'),
(3, 'The Alchemist', 'Paulo Coelho', 299, 'Out of Stock', 'Fiction'),(4, 'Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 799, 'In Stock', 'Fantasy'),
(5, 'Becoming', 'Michelle Obama', 950, 'Out of Stock', 'Biography');


-- Qn 1
SELECT DISTINCT genre FROM books;

-- Qn 2
SELECT * FROM books WHERE stock_status = 'In Stock' AND price < 400;

-- Qn 3
SELECT * FROM books WHERE stock_status <> 'In Stock' OR price > 700;

-- Qn 4
SELECT title, price, price * 1.10 AS price_with_tax FROM books;

-- Qn 5
SELECT Title, Price, Stock_Status FROM books ORDER BY Price DESC;

