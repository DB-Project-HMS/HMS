Use hospital;
Create Table Login(
role varchar(30) not NULL,
LoginID varchar(30) Primary Key,
PIN int not Null
);
Create Table Manager(
Name varchar(40) not Null,
SID varchar(20) Primary Key,
Address varchar(50),
Role varchar(20) not Null,
Contact int not Null
);
create Table Doctor(
DocID varchar(20) Primary Key,
Name varchar(30),
Contact varchar(20),
Gender enum("Male","Female",'M','F'),
Qualification varchar(20) not Null,
Appno varchar(10)
);
create Table Patient(
PID varchar(20) Primary Key,
Name varchar(30),
Contact varchar(20),
Gender enum("Male","Female",'M','F','Nil'),
Disease varchar(20) not Null,
Appno varchar(10) not Null
);
create Table Receptionist(
PID varchar(20) not Null,
DocID varchar(20) not Null,
Appno varchar(10) Primary Key,
AppDate varchar(20) not Null
);
create Table Pharmacist(
PID varchar(20) not Null,
DocID varchar(20) not Null,
MedID varchar(10) not Null
);
Create Table Medicine(
MedID varchar(10) Primary Key,
Dose varchar(200) not Null
);
