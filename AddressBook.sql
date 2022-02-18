-------------UC1------------------------------
create database AddressBookService;
-------------UC2-------------------------------
create table AddressBook(First_name varchar(200),
Last_name varchar(200), 
Address varchar(500), 
City varchar(200),
State varchar(500),
Zip bigint, 
Phone_number varchar(500),
Email varchar(200));
--------------UC3--------------------------------
insert into addressbook 
(First_name,Last_name,Address,City,State,Zip,Phone_number,Email)values
('Amrita','Shinde','L/5', 'Nashik','Maharashtra',415001,'9876543210','a.shinde@gmail.com'),
('Abhishek','Shah','M/1 Ward','Surat','Gujrat',515611,'7666543333','abhishah@yahoo.com');
-------------UC4-----------------------------------
update AddressBook set Phone_number = '9850011111' where First_name = 'Amrita'and Last_name = 'Shinde';
select * from AddressBook;