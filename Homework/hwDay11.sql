CREATE DATABASE library_db;
USE library_db;

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

INSERT INTO authors (name) VALUES ('J.K. Rowling');
INSERT INTO authors (name) VALUES ('George Orwell');
INSERT INTO authors (name) VALUES ('R.K. Narayan');

INSERT INTO books (title, author_id) VALUES ('Harry Potter', 1);
INSERT INTO books (title, author_id) VALUES ('Harry Potter 2', 1);
INSERT INTO books (title, author_id) VALUES ('1984', 2);
INSERT INTO books (title, author_id) VALUES ('Animal Farm', 2);
INSERT INTO books (title, author_id) VALUES ('Malgudi Days', 3);
