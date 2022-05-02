CREATE DATABASE Piano;

USE Piano;

CREATE TABLE Students (StudentID INT auto_increment,
StudentName varchar (30), 
DoB date, 
StartDate date, 
EndDate date, 
Notes Text,
Primary Key(StudentID),
unique (StudentName)
);
EXPLAIN Students;

USE Piano;
INSERT INTO Students(StudentID, StudentName, DoB, StartDate, EndDate, Notes)
values ('1', 'Ava Jones', '09-04-20', '17-02-10', '22-02-05', 'Beginner when started'),
('2', 'Claire Davies', '90-07-22', '21-09-15', '00-00-00', 'Had online lessons in lockdown');

