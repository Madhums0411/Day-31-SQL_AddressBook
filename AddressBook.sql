----UC1 Create database
Create database AddressBook_Service
use AddressBook_Service

----UC2 Create Addres Book table

create table AddressBook
(
FirstName varchar(50) not null,
LastName varchar(50) not null,
Address varchar(100) not null,
City varchar(50) not null,
State varchar(50) not null,
Zipcode varchar(50) not null,
PhoneNumber varchar(50) not null,
Email varchar(50) not null
)
Select * from AddressBook