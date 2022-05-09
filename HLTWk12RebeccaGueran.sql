use uni;
select * from uni.student
where CourseID <>1;

select Forenames, Surname, DateOfBirth
from uni.student
where EmailAddress = 'val.bolger@example.com';

select * from uni.module
where Subject = 'Economics';

select ClassID, CDate
from uni.schedule
where CDate < '2020-09-21';

insert into uni.Course(CourseName)
values ('Deep-Space Radar Telemetry');

insert into uni.module (ModuleName,Subject,Level,CourseID,Credits)
values ('String Theory','Quantum Physics',6,13,20), 
('Exotic Matter', 'Quantum Physics',6,13,20),
('Harnessing the Einstein-Rosen Bridge',6,13,20),
('Supercollision and miniature Black Holes',6,13,20);

insert into uni.class (LecturerID,ModuleID)
values (6,105), (6,106), (6,107), (6,108);

select count(*) from uni.student;

select sum(FullTimeFee) from uni.fees;

select min(FullTimeFee) from uni.fees;

select avg(PartTimeFee) from uni.fees;

select CourseID, FullTimeFee-ScholarshipDiscount from uni.fees;

select CourseID from uni.fees
where FullTimeFee =(select min(FullTimeFee) from uni.fees);


select CourseID, FullTimeFee-ScholarshipDiscount from uni.fees
order by 2 DESC;

select * from uni.application
where CourseAppliedFor=11
and DateOfApplication between '2020-03-01' and '2020-08-30';

create table ApplicationArchive 
(ArchiveID int NOT NULL,
StudentID int NOT NULL,
PRIMARY KEY (ArchiveID)
FOREIGN KEY (StudentID) REFERENCES application(StudentID));

select * from uni.course
where CourseID in (1,3,5,7);

select* from uni.module
where CourseID in (Select CourseID from uni.fees where FullTimeFee > 9000);

select* from uni.class
where ModuleID in (Select ModuleID from uni.module where CourseID in 
(select CourseID from uni.fees where FullTimeFee>9000));

Select Student.StudentID, Course.CourseName
from uni.student inner join uni.course
on student.CourseID=Course.CourseID;

select Course.CourseName, Fees.FullTimeFee, Fees.PartTimeFee
from Uni.Course inner join Uni.Fees
on Course.CourseID=Fees.CourseID;

Select * from uni.class 
inner join uni.module on class.ModuleID=module.ModuleID
where Class.ModuleID between 52 and 57;





