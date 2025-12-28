SELECT books.title, borrowers.name
FROM books
LEFT JOIN borrowers
ON books.book_id = borrowers.book_id;

SELECT borrowers.name, books.title
FROM borrowers
LEFT JOIN books
ON borrowers.book_id = books.book_id;

SELECT books.title
FROM books
LEFT JOIN borrowers
ON books.book_id = borrowers.book_id
WHERE borrowers.book_id IS NULL;

SELECT borrowers.name, books.title
FROM borrowers
LEFT JOIN books
ON borrowers.book_id = books.book_id;

