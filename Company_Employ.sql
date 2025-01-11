-- let's solve a question by creating 	a database.... 

CREATE DATABASE IF NOT EXISTS Company_Employ;
USE Company_Employ;

CREATE TABLE Employes(
    ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Salary FLOAT
);

INSERT INTO Employes(ID,Name,salary) 
VALUES
(901,"Hayat",20000.50), 
(802,"Taher",25000.50),
(403,"Sami",15000.00),
(2204,"Murat",9000.50),
(100,"Sami",45212), 
(205,"HIllol",18000.50);
 

SELECT DISTINCT name FROM Employes WHERE name = "Taher";

SELECT * FROM Employes WHERE name = "Taher"; 

SELECT * FROM Employes WHERE Salary>= 16000 LIMIT 2;

SELECT * FROM Employes ORDER BY name ASC;

SELECT * FROM Employes ORDER BY name DESC;

SELECT MAX(name) FROM Employes;

SELECT MIN(Salary) FROM Employes;

SELECT COUNT(Salary) FROM Employes;

SELECT AVG(name) FROM Employes;

SELECT * FROM Employes;

SELECT Salary, COUNT(ID) FROM Employes
GROUP BY salary
HAVING MAX(salary) >= 20000 ;


UPDATE Employes 
SET salary = 9000.50
WHERE salary = 20000.50;


-- create another new table 
CREATE TABLE Student(
    roll INT PRIMARY KEY,
    name VARCHAR(100),
    class INT NOT NULL,
    age INT NOT NULL
);

INSERT INTO Student(roll,name,class,age)
VALUES
(1,"Tahim",9,15),
(2,"Tuhin",9,16),
(3,"Solim",5,11),
(4,"Baker",7,12),
(5,"Shofik",10,17),
(6,"Nahid",10,16);

SELECT 
    *
FROM
    Student;

SET sql_safe_updates = 0;

UPDATE Student
SET name = 'Solaiman'
WHERE name = 'Solim';

-- delete data from table.
DELETE FROM Student
WHERE name = "Solaiman";


-- Try to use Foreign key....
CREATE TABLE Dept (
    Id INT  PRIMARY KEY,
    name VARCHAR(70)
);

INSERT INTO Dept(Id,name)
VALUES
(100,"Economic"),
(101,"Sells"),
(102,"Philosophy"),
(103,"Phsycology");

UPDATE Dept
SET id = 109
WHERE name = "Sells";

SELECT * FROM Dept;


CREATE TABLE Teacher(
    id INT PRIMARY KEY,
    name VARCHAR(70),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Dept (Id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

INSERT INTO Teacher(id,name,dept_id)
VALUES
(52,"Hasan ali", 103),
(53,"Tayeb ali",100),
(55,"Sahil",101);

DROP TABLE Teacher;

SELECT * FROM Tea;

-- alter table Teacher
-- add column age int default 30;
-- drop column age;
-- modify id int;
-- rename to Teacher;


-- try to learn some joining into sql....
Create database if not exists Mapi;
use Mapi;

Create Table Student1(
    Id Int Primary key,
    Full_Name varchar(50)
);

Insert Into Student1(Id,Full_Name)
Values
(121,"Hayat Mahmud"),
(225,"Ali Hosen"),
(345,"Taher ali");

-- truncate table Student1;
select * from Student1;

Create Table Course1(
    CourseId Int Primary key,
    Course_Name varchar(50)
);

Insert Into Course1(CourseId,Course_Name)
Values
(121,"History"),
(222,"Physics"),
(345,"Technology");

select * from Course1;	

Select * 
From Student1 as s1
inner join Course1 as c1
On s1.Id = c1.CourseId;

Select * 
From Student1 as s1
left join Course1 as c1
On s1.Id = c1.CourseId;
Union
Select * 
From Student1 as s1
right join Course1 as c1
On s1.Id = c1.CourseId;






