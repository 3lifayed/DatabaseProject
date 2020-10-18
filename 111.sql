--DDL

create database LIBRARY;
use Library;
create table Publisher
(
id int ,
name varchar(30) not null ,
addr varchar(30) not null ,
telphone varchar(11) not null,
email varchar(35) not null
primary key(id)
);

create table Library
(
id int Primary key ,
place varchar(50) unique,
subj varchar(50) not null
);

create table Book
(
isbn int ,
name varchar(50)not null,
auther varchar(50)not null,
yearOfPublish int not null,
pages int not null,
edition varchar(20),
id int primary key ,
id_library int foreign key references Library(id),
id_publisher int foreign key references Publisher(id)
);

create table Student
(
id_stu int primary key,
fname varchar(15) not null,
lname varchar(15) not null,
dept varchar(15) not null,
yearOfStudy int not null,
);

create table Student_Book
(
stuid int  constraint stu_fk foreign key references student(id_stu),
bookid int constraint book_fk foreign key references book(id),
constraint st_bo primary key(stuid,bookid) ,
startdate date not null ,
enddate date not null 
);

--------------------------------------------------------------------------------------------------------------------------

--DML
--Publisher table
insert into Publisher(id,name,addr,email,telphone) values('1','ibn-katheer','lebanon','info@ibn-katheer.com','03-204459');
insert into Publisher(id,name,addr,email,telphone) values('2','ibn-hazm','Beirut','ibnhazim@cyberia.net.lb','01-701974');
insert into Publisher(id,name,addr,email,telphone) values('3','El-shorouk','Egypt','dar@shorouk.com','24023399');
insert into Publisher(id,name,addr,email,telphone) values('4','Obeikan','Saudi arabia','mohsen@obeikan.com.sa','09669220299');
insert into Publisher(id,name,addr,email,telphone) values('5','jarir','Saudi arabia','farag@jarirbookstore.com','96614629500');
insert into Publisher(id,name,addr,email,telphone) values('6','dar-djlah','Iraq','dardjlah@yahoo.com','96418170792');
insert into Publisher(id,name,addr,email,telphone) values('7','dar-djlah','Tunis','imed.azali@gnet.tn','216698633');
insert into Publisher(id,name,addr,email,telphone) values('8','Fikr','Syria','fikr@fikr.com','00963112166');
insert into Publisher(id,name,addr,email,telphone) values('9','El-salam','France','essalam@essalam.com','33143380560');
insert into Publisher(id,name,addr,email,telphone) values('10','El-quds','Palastine','abugoushco@alqudsnet.com','33143380560');
insert into Publisher(id,name,addr,email,telphone) values('11','Middle-east','Canada','middleeastbookstore@videotron.ca','15147441237');

--Library table
insert into Library(id,place,subj)values('1','fs column from left','Design');
insert into Library(id,place,subj)values('2','scnd column from left','electronics');
insert into Library(id,place,subj)values('3','thr column from left','HumanDevelopment');
insert into Library(id,place,subj)values('4','frth column from left','Nature');
insert into Library(id,place,subj)values('5','west corner','programming'); 
insert into Library(id,place,subj)values('6','south corner','IT');
insert into Library(id,place,subj)values('7','fs column from right','Project');
insert into Library(id,place,subj)values('8','scnd column from right','Network');

--Book table
insert into Book(id,name,auther,isbn,yearOfPublish,id_publisher,pages,edition,id_library) values('1','introduction to java','james macron','12154201','2000','11','500','two','5');
insert into Book(id,name,auther,isbn,yearOfPublish,id_publisher,pages,edition,id_library) values('2','How to be attractive','adam philip','85475125','2005','4','300','one','3');
insert into Book(id,name,auther,isbn,yearOfPublish,id_publisher,pages,edition,id_library) values('3','make project easy','albert stanly','32610548','2010','9','500','third','7');
insert into Book(id,name,auther,isbn,yearOfPublish,id_publisher,pages,edition,id_library) values('4','CCNA','kasim alfred','95201451','2002','8','350','eleven','8');
insert into Book(id,name,auther,isbn,yearOfPublish,id_publisher,pages,edition,id_library) values('5','introduction to 3d Design','stiwart alien','25697034','2013','10','130','seven','1');
insert into Book(id,name,auther,isbn,yearOfPublish,id_publisher,pages,edition,id_library) values('6','Graphic Diploma','Mahmoud awaad','33215480','2007','2','731','four','1');
insert into Book(id,name,auther,isbn,yearOfPublish,id_publisher,pages,edition,id_library) values('7','Simple electronics','gorgy caren','26154875','2015','11','243','one','2');
insert into Book(id,name,auther,isbn,yearOfPublish,id_publisher,pages,edition,id_library) values('8','C#','adam ibrahm','51245845','2001','6','452','twenty','5');
insert into Book(id,name,auther,isbn,yearOfPublish,id_publisher,pages,edition,id_library) values('9','C','adam ibrahm','51245846','2001','6','444','twenty','5');
insert into Book(id,name,auther,isbn,yearOfPublish,id_publisher,pages,edition,id_library) values('10','C++','adam ibrahm','51245847','2001','7','452','twenty','5');
insert into Book(id,name,auther,isbn,yearOfPublish,id_publisher,pages,edition,id_library) values('11','Java','ola saeed','51245847','2001','8','452','eight','5');
insert into Book(id,name,auther,isbn,yearOfPublish,id_publisher,pages,edition,id_library) values('12','Database','Elmasry','51245147','2005','10','452','eleven','6');
insert into Book(id,name,auther,isbn,yearOfPublish,id_publisher,pages,edition,id_library) values('13','Stay Strong','joseph merphey','12141245','2006','5','321','second','3');

--Student table
insert into Student(id_stu,fname,lname,dept,yearOfStudy) values('14251','mahmoud','zaki','CS','1');
insert into Student(id_stu,fname,lname,dept,yearOfStudy) values('14245','mai','fathy','IT','2');
insert into Student(id_stu,fname,lname,dept,yearOfStudy) values('14352','mounir','ali','CS','2');
insert into Student(id_stu,fname,lname,dept,yearOfStudy) values('14551','ahmed','anwar','IT','3');
insert into Student(id_stu,fname,lname,dept,yearOfStudy) values('12314','menna','mamdouh','CS','2');
insert into Student(id_stu,fname,lname,dept,yearOfStudy) values('16845','sara','ramzy','IT','4');
insert into Student(id_stu,fname,lname,dept,yearOfStudy) values('13251','karim','ashraf','CS','4');
insert into Student(id_stu,fname,lname,dept,yearOfStudy) values('14278','zaki','abdelfatah','CS','2');
insert into Student(id_stu,fname,lname,dept,yearOfStudy) values('14287','randa','makram','IT','3');
insert into Student(id_stu,fname,lname,dept,yearOfStudy) values('14274','fathy','mostafa','CS','1');
insert into Student(id_stu,fname,lname,dept,yearOfStudy) values('14888','nour','emad','IT','1');
insert into Student(id_stu,fname,lname,dept,yearOfStudy) values('18278','zaki','mahmoud','CS','4');
insert into Student(id_stu,fname,lname,dept,yearOfStudy) values('15124','marwa','zain','IT','3');

insert into Student_Book values (14251,1,'11-11-2011','12-11-2011')
insert into Student_Book values (14245,2,'2-10-2011','2-11-2011')
insert into Student_Book values (15124,5,'1-1-2011','1-2-2011')
insert into Student_Book values (14888,4,'1-7-2011','2-7-2011')
insert into Student_Book values (13251,7,'12-5-2011','1-5-2011')
insert into Student_Book values (18278,10,'11-26-2011','12-26-2011')
insert into Student_Book values (14287,9,'5-11-2011','6-11-2011')
insert into Student_Book values (14325,12,'7-4-2011','8-4-2011')
insert into Student_Book values (14551,8,'9-6-2011','10-6-2011')


--------------------------------------------------------------------------------------------------------------

--display all tables
select * from book
select * from Student  
select * from Student_Book
select * from Library
select * from Publisher


--1--display books name for whom in cs department
create view who_dept as 
select distinct name 
from Book ,Student,Student_Book
where Student.id_stu = Student_Book.stuid
and Student.dept='cs'
and Book.id=Student_Book.bookid

--2--display books name for whom in IT department
select * from who_dept

--3--display name that have a,s,z in fname 
select fname as name 
from student 
where fname like '%[i,s,z]%'

--4--display all information for whom in cs and name of books
create view info as 
select student.* ,book.name 
from Book ,Student,Student_Book
where Student.id_stu = Student_Book.stuid
and Student.dept='cs'
and Book.id=Student_Book.bookid


--5--display all information for whom in it and name of books
select * from info

--6--display books and place of each one
select book.name , library.subj , Library.place 
from Library,Book
where library.id=book.id_library

--7--display all  book from the little to most pages
select book.name , pages
from Book
order by pages Asc

--8--display num of student in cs and num in it
select Student.dept , count(id_stu) as 'num. of student'
from Student
group by dept

--9--display how many student in every year
select yearOfStudy , count(id_stu) as 'num. of student'
from Student
group by yearOfStudy

--10--display name of book , year of bublish , subj , name of publisher
select b.name , b.yearOfPublish , l.subj , p.name as 'name of Publisher'
from book as b , library as l , Publisher as p
where b.id_publisher=p.id 
and b.id_library=l.id

--11--display  20% of student
select top 20 percent Student.id_stu , Student.fname +' '+ Student.lname as 'name' ,Student.dept
from Student

--12--display email of publisher that have .yahoo
select P.name ,p.email ,p.addr ,p.telphone
from Publisher as p
where email like '%yahoo%'

--13--display information of student that have 5 in second num of his id
select s.*
from Student as s
where id_stu like '_5___'


--14--display name of book that don't borrow

SELECT *
FROM Book
WHERE  not EXISTS (SELECT * 
                  FROM Student_Book
                  WHERE book.id=Student_Book.bookid);


--15--display num of book in every subj
select subj , count(book.id) as'Num. of Book'
from Library , Book
where book.id_library=Library.id
group by subj
order by [Num. of Book] desc

