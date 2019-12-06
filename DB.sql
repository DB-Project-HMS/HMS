Use hospital;
Drop table If exists Patient;
Drop table If exists Doctor;
Drop table If exists Receptionist;
Drop table if exists Medicine;
Drop table if exists Pharmacist;
Create Table Login(
role varchar(30) not NULL,
LoginID varchar(30) Primary Key,
PIN int not Null
);
Drop table Patient;
Drop table Doctor;
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
Appno varchar(10) unique,
LoginId varchar(30) unique
);
create Table Patient(
PID varchar(20) Primary Key,
Name varchar(30),
Contact varchar(20),
Gender enum("Male","Female",'M','F','Nil'),
Disease varchar(20) not Null,
Appno varchar(10) unique
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

Alter Table Doctor add Foreign Key (Appno) references Receptionist(Appno);
Alter Table Patient add Foreign Key (Appno) references Receptionist(Appno);
Alter Table Pharmacist add Foreign Key (PID) references Patient(PID);
Alter Table Pharmacist add Foreign Key (DocID) references Doctor(DocID);
Alter Table Pharmacist add Foreign Key (MedID) references Medicine(MedID);
Alter Table Doctor add Foreign Key (LoginID) references Login(LoginID);
