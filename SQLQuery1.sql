CREATE DATABASE Cinema

use Cinema

CREATE TABLE Janr(
Id int primary key identity,
Name nvarchar(20)
)

INSERT INTO Janr
values('Dram'),
('Komedi'),
('Tarix'),
('Horror'),
('aksion')

CREATE TABLE Actor(
Id int  primary key identity,
Name nvarchar(20),
Surname nvarchar(20)
)


insert into Actor
values('Tom','Hardy'),
('Will','Smith'),
('Paul','Rudd'),
('Dwayn','Johnson'),
('Tom','Cruise')

CREATE TABLE Film(
Id int primary key identity,
Name nvarchar(20),
Imd int,
Title nvarchar(max),
Janr_Id int foreign key references Janr(Id),
Actor_Id int foreign key references Actor(Id)
)


insert into Film
values('Wrcraft',5,'w',5,1),
('Hobbit',7,'s',6,2),
('Rampage',6,'v',7,3),
('Bloodshut',8,'d',8,4),
('Assasins',9,'b',9,5)

CREATE TABLE Hall(
Id int primary key identity,
Name nvarchar(20),
Number int,
Ticket_Id int foreign key references Ticket(Id),
Film_Id int foreign key references Film(Id),
Customer_Id int foreign key references Customer(Id)
)



insert into Hall
values('R',1,1,6,5),
('B',5,2,7,6),
('E',6,3,8,7),
('D',8,4,9,8),
('F',2,5,10,9)

CREATE TABLE Ticket(
Id int primary key identity,
Name nvarchar(20),
Number int
)

INSERT INTO Ticket
values('Tic',1),
('Tic',1),
('Tic',3),
('Tic',5),
('Tic',4)

create TABLE Seans(
Id int primary key identity,
Name nvarchar(20),
seanstime int
)


insert into Seans
VALUES('mm',12.00),
('dd',13.00),
('bb',10.20),
('yy',15.20),
('ll',15.20)


CREATE TABLE [Time](
Id int primary key identity,
Film_Id int foreign key references Film(Id),
Seans_Id int foreign key references Seans(Id)
)

insert into Time
values(6,1),
(7,2),
(8,3),
(9,4),
(10,9)

CREATE TABLE Customer(
Id int primary key identity,
Name nvarchar(20),
Surname nvarchar(20),
Film_Id int foreign key references Film(Id),
Ticket_Id int foreign key references Ticket(Id)
)



insert into Customer
values('Murad','Aslanov',6,1),
('elnur','Agalarov',7,2),
('resat','sultanov',8,3),
('orxan','ibrahimov',9,4),
('anar','ibrahimov',10,5)

select * from Actor

select * from Customer

select * from Film

select * from Janr

select * from Seans

select * from Time

select * from Hall

select * from Ticket
