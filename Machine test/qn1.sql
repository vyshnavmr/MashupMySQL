CREATE TABLE Employee(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(20),
    Department VARCHAR(30),
    Leaves INT );

CREATE TABLE Exam( 
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Employee_ID INT,
    Exam_status VARCHAR(6), 
    FOREIGN KEY(Employee_ID) REFERENCES employee(ID));

INSERT INTO Employee (ID, Name, Department,Leaves) 
VALUES (1, 'Raju', 'Sales', 1), 
       (2, 'Sangeetha', 'Sales', 3), 
       (3, 'Vinay', 'Operations', 8), 
       (4, 'Abey', 'Packing', 2), 
       (5, 'Thomas', 'Packing', 1), 
       (6, 'Muneer', 'Operations', 7), 
       (7, 'Aparna', 'Sales', 3), 
       (8, 'Abid', 'Operations', 9), 
       (9, 'Fathima', 'Sales', 11), 
       (10, 'Varghese', 'Operations', 14);

INSERT INTO Exam (ID, employee_id, exam_status) 
VALUES (1, 2, 'Pass'), 
       (2, 5, 'Fail'), 
       (3, 1, 'Fail'), 
       (4, 8, 'Pass'), 
       (5, 3, 'Pass'), 
       (6, 1, 'Pass'), 
       (7, 6, 'Fail'), 
       (8, 9, 'Pass'), 
       (9, 10, 'Pass');

SELECT * FROM Employee 
WHERE Department='Sales' AND Leaves>5;

SELECT COUNT(Name)AS department_operation 
FROM Employee 
WHERE Department='Operations';

SELECT Department, COUNT(Name) 
FROM Employee 
GROUP BY Department;

SELECT Department, SUM(Leaves) 
FROM Employee 
GROUP BY Department HAVING SUM(Leaves>10);

SELECT Employee.Name FROM Employee e
JOIN Exam
ON employee.ID = Exam.Employee_id
WHERE Exam.exam_status = 'Pass';

SELECT Name FROM Employee
WHERE id NOT IN (
    SELECT Employee_id
    FROM Exam);
