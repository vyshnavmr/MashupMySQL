CREATE TABLE `college`.`books` (`Id` INT NOT NULL AUTO_INCREMENT , `Title` VARCHAR(20) NOT NULL , `Author` VARCHAR(20) NOT NULL ,
 `Price` INT NOT NULL , `Genre` VARCHAR(15) NOT NULL , PRIMARY KEY (`Id`)) ENGINE = InnoDB;

INSERT INTO books(Title,Author,Price,Genre)
VALUES('The Alchemist','Paulo Choelho','750','Fiction'),('The Great Gatsby','Brandon Stark','649','Science'),
('Run for your life','Dan Brown','400','Romance'),('Jungle King','Ricon Stark','999','History'),('The red sea','Dan Bown','399','Romance');

-- Qn 1
SELECT * FROM `books` WHERE price > 400;

-- Qn 2
SELECT * FROM `books` WHERE Genre IN ('history','fiction','science'); 

-- Qn 3
SELECT * FROM `books` WHERE Title = "The great gatsby";

-- Qn 4
SELECT * FROM `books` WHERE Author <> 'dan brown';