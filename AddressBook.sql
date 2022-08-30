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


----UC5 Delete person using person name
delete from AddressBook where FirstName ='Bindu';
Select * from AddressBook

----UC6 Retrieve Person belongs to city or state from address book
select FirstName from AddressBook where city = 'Chitradurga' or State='Karnataka'


----UC7 Ability to Understand size of Addressbook by City or state(indicate size of count)
select count(state) from AddressBook
select count(City) from AddressBook

----UC8 Retrieve the persons name sorted Alphabetically for a given city
select FirstName from AddressBook order by city
select * from AddressBook order by city,FirstName


----UC9 Identify each addressbook by name and type
alter table AddressBook add type varchar(100) default 'family' not null
select * from AddressBook
update AddressBook set type='Family' where FirstName in ('Madhu')
update AddressBook set type='Friend' where FirstName in ('Monika')
select * from AddressBook


----UC10 Number of contact persons by type
select type, count(type) as totalcount from AddressBook group by type

----UC11 Add person to Both Friend and Family
insert into AddressBook values
('Bindu','MS','Holalkere','Chitradurga','Karnataka','577526','9880912843','abc@gmail.com','Family'),
('Bindu','MS','Holalkere','Chitradurga','Karnataka','577526','9880912843','abc@gmail.com','Friend');
select * from AddressBook