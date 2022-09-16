create database StudentManagement;
use StudentManagement;
create table Class(
	classId int not null auto_increment primary key,
    className varchar(255),
    startDate date,
    status bit
);
create table Subject(
	subId int not null auto_increment primary key,
    subName varchar(255),
    credit int,
    status bit
);
create table Student(
	studentId int not null auto_increment primary key,
    studentName varchar(255),
    address varchar(255),
    status bit,
    classId int,
    foreign key(classId) references Class(classId)
);
create table Mark(
	markId int not null auto_increment primary key,
    subId int,
    studentId int,
    mark varchar(255),
    examTimes float,
    foreign key (subId) references Subject(subId),
    foreign key (studentId) references Student(studentId)
    
);
insert into Class(className, startDate, status) values
('A1','2022-12-10',1), 
('A2','2012-12-10',1), 
('A3','2002-12-10',0);
select * from Class;

insert into Student(studentName, address, status, classId) values
('Trung', 'Bac Giang', 1, 1),
('Thor', 'Ha Noi', 1, 1),
('Hulk', 'Bac Ninh', 0, 2),
('Captain', 'Bac Giang', 0, 1);
select * from Student;
INSERT INTO Subject
VALUES (1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1),
       (4, 'RDBMS', 10, 1);
select * from Subject;
INSERT INTO Mark (SubId, StudentId, Mark, ExamTimes)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);
select * from Mark;