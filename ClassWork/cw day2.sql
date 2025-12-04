CREATE TABLE `college`.`students` (`Id` INT NOT NULL AUTO_INCREMENT , `Name` VARCHAR(20) NOT NULL , `Age` INT NOT NULL , `Department` VARCHAR(20) NOT NULL , `Grade`

INSERT into studentinfo
VALUES ('1','Manuel','23','Computer Science','89'),('2','Bebekha','19','Physics','75'),
        ('3','Vasquez','21','Electronics','90'),('4','Max','20','Computer Science','95');

-- Qn 1
SELECT * FROM studentinfo WHERE age > 20;

-- Qn 2
SELECT * FROM studentinfo WHERE Department IN('computer science','physics');

-- Qn 3
SELECT Name FROM studentinfo WHERE Grade = 90;

-- Qn 4
SELECT Name FROM studentinfo WHERE Grade BETWEEN 70 AND 90;


