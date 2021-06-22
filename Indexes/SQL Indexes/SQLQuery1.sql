CREATE TABLE Employee2
(Id INT,Name VARCHAR(50),Salary INT, Gender VARCHAR(10),City VARCHAR(50),Dept VARCHAR(50))
INSERT INTO Employee2 VALUES (3,'Pranaya', 4500, 'Male', 'New York', 'IT')
INSERT INTO Employee2 VALUES (1,'Anurag', 2500, 'Male', 'London', 'IT')
INSERT INTO Employee2 VALUES (4,'Priyanka', 5500, 'Female', 'Tokiyo', 'HR')
INSERT INTO Employee2 VALUES (5,'Sambit', 3000, 'Male', 'Toronto', 'IT')
INSERT INTO Employee2 VALUES (7,'Preety', 6500, 'Female', 'Mumbai', 'HR')
INSERT INTO Employee2 VALUES (6,'Tarun', 4000, 'Male', 'Delhi', 'IT')
INSERT INTO Employee2 VALUES (2,'Hina', 500, 'Female', 'Sydney', 'HR')
INSERT INTO Employee2 VALUES (8,'John', 6500, 'Male', 'Mumbai', 'HR')
INSERT INTO Employee2 VALUES (10,'Pam', 4000, 'Female', 'Delhi', 'IT')
INSERT INTO Employee2 VALUES (9,'Sara', 500, 'Female', 'London', 'IT')
select * from Employee2
select * from Employee2 where Id=8
CREATE CLUSTERED INDEX IX_Employee2_ID ON Employee2(Id ASC)
CREATE TABLE Employee3
(Id INT PRIMARY KEY,Name VARCHAR(50),Salary INT,Gender VARCHAR(10),City VARCHAR(50),Dept VARCHAR(50))
sp_helpindex Employee3
Execute sp_helpindex Employee3
INSERT INTO Employee3 VALUES (3,'Pranaya', 4500, 'Male', 'New York', 'IT')
INSERT INTO Employee3 VALUES (1,'Anurag', 2500, 'Male', 'London', 'IT')
INSERT INTO Employee3 VALUES (4,'Priyanka', 5500, 'Female', 'Tokiyo', 'HR')
INSERT INTO Employee3 VALUES (5,'Sambit', 3000, 'Male', 'Toronto', 'IT')
INSERT INTO Employee3 VALUES (7,'Preety', 6500, 'Female', 'Mumbai', 'HR')
INSERT INTO Employee3 VALUES (6,'Tarun', 4000, 'Male', 'Delhi', 'IT')
INSERT INTO Employee3 VALUES (2,'Hina', 500, 'Female', 'Sydney', 'HR')
select * from Employee3
CREATE TABLE tbOrder(Id INT,CustomerId INT,ProductId Varchar(100),ProductName VARCHAR(50))
DECLARE @i int = 0
WHILE @i < 3000 
BEGIN
    SET @i = @i + 1
 if(@i < 500)
 Begin
     INSERT INTO tbOrder VALUES (@i, 1, 'Product - 10120', 'Laptop')
 end
 Else if(@i < 1000)
 Begin
     INSERT INTO tbOrder VALUES (@i, 3, 'Product - 1020', 'Mobile')
 End
    Else if(@i < 1500)
 Begin
     INSERT INTO tbOrder VALUES (@i, 2, 'Product - 101', 'Desktop')
 End
 Else if(@i < 2000)
 Begin
     INSERT INTO tbOrder VALUES (@i, 3, 'Product - 707', 'Pendrive')
 End
    Else if(@i < 2500)
 Begin
     INSERT INTO tbOrder VALUES (@i, 2, 'Product - 999', 'HD')
 End
  Else if(@i < 3000)
 Begin
     INSERT INTO tbOrder VALUES (@i, 1, 'Product - 100', 'Tablet')
 End
END
SELECT*FROM tbOrder WHERE ProductId = 'Product – 101'
CREATE NONCLUSTERED INDEX IX_tblOrder_ProductId
ON dbo.tblOrder (ProductId)
INCLUDE ([Id],[CustomerId],[ProductName])
SELECT * FROM tblOrder WHERE ProductId = 'Product – 101';

