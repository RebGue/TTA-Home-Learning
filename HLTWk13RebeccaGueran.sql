use uni;

select * from uni.application
where courseappliedfor is null;

select * from uni.student
where courseid is not null;

select * from uni.student
where dateofbirth between '2002-06-01' and '2020-06-30';

select * from uni.application
where courseappliedfor is null
and dateofapplication between '2020-04-01' and '2020-07-31';

select courseid, count(*)
from uni.module
group by courseid;

select courseappliedfor, count(*)
from uni.application
group by courseappliedfor;

select supervisingstaff, avg(membershipfee) from uni.club
group by supervisingstaff;

select supervisingstaff, sum(joiningfee) from uni.club
where active = 1
group by supervisingstaff;

select course.coursename, module.modulename 
from uni.module left join uni.course
on course.courseid = module.courseid;

select student.*, application.applicationid 
from uni.student left join uni.application
on student.studentid = application.studentid;

select schedule.classid, a.mxdate, schedule.feedbackscore
from uni.schedule inner join
(select classid, max(cdate) mxdate
from uni.schedule
group by classid) a
on a.classid = schedule.classid and schedule.cdate = a.mxdate;
