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

----UC3 Add contact details to Address book table

Insert into AddressBook values
('Madhu','MS','Ramagiri','Chitradurga','Karnataka','577539','9632355684','xyz@gmail.com')
('Bindu','MS','Holalkere','Chitradurga','Karnataka','577526','9880912843','abc@gmail.com'),
('Monu','MS','Hosadurga','Chitradurga','Karnataka','577521','9945597444','dhg@gmail.com')

Select * from AddressBook

----UC4 Edit existing person detail using name

update AddressBook set FirstName='Monika',LastName='S',Address='Bansihalli',Email='monu@gmail.com' where FirstName='Monu'
Select * from AddressBook



