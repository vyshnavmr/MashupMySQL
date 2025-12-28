CREATE TABLE authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

CREATE INDEX idx_author_id ON books(author_id);

INSERT INTO authors (name)
VALUES ('Paulo Coelho'), ('Robert Kiyosaki');

INSERT INTO books (title, author_id)
VALUES 
('The Alchemist', 1),
('Brida', 1),
('Rich Dad Poor Dad', 2);

