--1. DDL (Data Definition Language)
--1.1 (Database Yaratmaq Querisi)
Create Database P225FirstSqlDb

--1.2 (Yaradilmis Database-in Isdifade Elemek Ucun)
Use P225FirstSqlDb

--1.3 Table Yaratmaq Queris
Create Table Students
(
	Id int, 
	Name nvarchar(50), 
	SurName nvarchar(50), 
	Age Tinyint
)

Create Table Groups
(
	Id int,
	Name nvarchar(50)
)

--1.4 Yaradilmis Tabel-in Silinme Querisi
Drop Table Students

--1.5 Yaradilmis Tabelda Struktural Deyisiklik (Yeni Column Elave Etmek)
Alter Table Students 
Add Grade decimal(18,2)

--1.6 Yaradilmis Tabelda Struktural Deysiklik (Yaradilmis Columun Type-nin Deyisdirilmesi)
Alter Table Students Alter Column Grade money

Alter Table Students Alter Column Grade decimal(18,2)

Alter Table Students Drop Column Grade

--2 DML (Data Manipulation Language)
--2.1 Data Yaratmaq Querisi
Insert Into Students 
Values
(2,'Maqsud','Seferov',18)

Insert Into Students 
Values
(2,'Maqsud','Seferov',18),
(2,'Togrul','HuseynAliyev',18)

Insert Into Students(Name, SurName, Age, Id) 
Values
('Maqsud','Seferov',18,5),
('Togrul','HuseynAliyev',18,6)

Insert Into Students(Name) 
Values
('Maqsud'),
('Togrul')

--Tabel-i Sifirlamaq
Truncate Table Students

Insert Into Students(Id,Name, SurName, Age)
Values
(1,'Vusal','Aliyev',21),
(2,'Vusal','Imanov',22),
(3,'Murad','Hakverdi',18),
(4,'Ismayil','Cabbarli',22),
(5,'Abdulla','Rehimli',27)

--Data Editlemek Maksimum Derecede Diqqetli Olmaq
Update Students Set Name='Test-1' Where Name='Test'

Update Students Set Name='Test-1',  SurName ='Testov' Where Name='Test'

--Data Silmek Querisi Maksimum Diqqetli Olmaq
Delete Students Where Id = 9 AND Age = 30

Delete Students Where Id = 9 OR Id=8

--DQL (Data Query language)
Select * From Students

Select Name, Surname From Students

Select Name, Surname From Students Where Age > 21

Select Name, Surname From Students Where (Id % 2) = 0

Select Name, Surname From Students Where Age >= 21 And Age <= 27

Select Name, Surname From Students Where Age Between 27 And 21

Select Name, Surname From Students Where Age = 21 Or Age = 22

Select Name, Surname From Students Where Age In(33,32,21,18)

Select Id, Name as [Ad], SurName as [SoyAd] From Students

Select Id, Name [Ad], SurName [SoyAd] From Students

Select Id, Name as 'Ad', SurName as 'SoyAd' From Students

Select Id, Name 'Ad', SurName 'SoyAd' From Students 

Select Id, (Name+' '+SurName) 'FullName', Age From Students 

Select Id, (Name+' '+SurName) FullName, Age From Students 

Select MIN(Age) From Students

Select * From Students Where Age = (Select MIN(Age) From Students)

Select MAX(Age) From Students

Select sum(Age) From Students

Select (sum(Age)/2) From Students

Select avg(Age) From Students

Select UPPER(Name),LOWER(SurName) From Students

Alter table Students Add Email nvarchar(255)

Select LEN(Email) From Students

Select SUBSTRING(Email, 8, LEN(Email)) From Students

Select CHARINDEX('@',Email) From Students

Select SUBSTRING(Email, CHARINDEX('@',Email)+1, Len(Email)) From Students