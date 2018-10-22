use Training_19Sep18_Pune;
Create  Table  Customer_161720
(
Customerid int Unique Not null,
CustomerName varchar(20) Not null,
Address1 varchar(30),
Address2 varchar(30),
[Contact Number] varchar(12) Not null,
[Postal Code] varchar(10)
)
CREATE TABLE Employees_161720
(
EmployeeId INT NOT NULL PRIMARY KEY,
Name NVARCHAR(255) NULL
);
CREATE TABLE Contractors_161720
(
ContractorId INT NOT NULL PRIMARY KEY,
Name NVARCHAR(255) NULL
)
CREATE TABLE dbo.TestRethrow1
(
ID INT PRIMARY KEY
);
create type Region2
from varchar(15)
 create default default_Region as 'North America';
 EXEC sp_bindefault default_Region,'Region2'
 alter table Customer_161720
 add Customer_Region Region2;
 select * from Customer_161720;
 alter table Customer_161720
 add Gender char(1);
 ALTER TABLE Customer_161720
ADD CONSTRAINT CHK_CustomerGender CHECK (Gender='F' or Gender='M' or Gender='T' );
create table Orders_161720
(
OrdersID int not null Identity(1000,1),
CustomerID int not null,
OrdersDate DateTime,
Order_State char(1)
check (Order_State='P' OR Order_state='C')
)
alter table Orders_161720
add constraint fk_CustOrders1
foreign key (CustomerID) references Customer_161720(Customerid); 
sp_help

CREATE SEQUENCE IdSequence1 AS INT
START WITH 10000
INCREMENT BY 1;
INSERT INTO Employees_161720(EmployeeId, Name)
VALUES (NEXT VALUE FOR IdSequence1, 'Akhila');
INSERT INTO Contractors_161720 (ContractorId, Name)
VALUES (NEXT VALUE FOR IdSequence1, 'Navina');
INSERT INTO Contractors_161720 ( Name)
VALUES ( 'Navina');
SELECT * FROM Employees_161720;
SELECT * FROM Contractors_161720;
