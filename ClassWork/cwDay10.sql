CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE
);

CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100)
);

CREATE TABLE enrollments (
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO students (name, email)
VALUES 
('Alice', 'alice@gmail.com'),
('Bob', 'bob@gmail.com');

INSERT INTO courses (course_name)
VALUES
('Python'),
('Web Development');

INSERT INTO enrollments (student_id, course_id)
VALUES
(1, 1),
(2, 2);

SELECT students.name, courses.course_name
FROM enrollments
JOIN students ON enrollments.student_id = students.student_id
JOIN courses ON enrollments.course_id = courses.course_id;

