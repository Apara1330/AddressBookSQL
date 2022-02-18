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
-------------UC5-----------------------------------
delete from AddressBook where First_name = 'Abhishek' and Last_name= 'Shah';
select * from AddressBook;
-------------UC6-----------------------------------
select First_name,Last_name from AddressBook where City= 'Nashik' or State= 'Maharashtra';
-------------UC7-----------------------------------
select COUNT(city) as COUNT_OF_ADDRESS_BOOK 
from AddressBook where city='Nashik' AND state='Maharashtra';
-------------UC8-----------------------------------
insert into AddressBook (First_name,Last_name,Address,City,State,Zip,Phone_number,Email) values
('Pooja','Bhide','M/14 Mahadva Street','Kolhapur','Maharashtra',450013,'8765432199','poojab@gmail.com'),
('Jeevan','Patil','N/02 Shivaji Peth','Miraj','MP',256791,'8436748890','jPatil@rediffmail.com'),
('Kiyan','Sonavne','D45 Jabalpur','JB','Haryana',788876,'7896566666','kiyan@gmail.com'),
('Rohini','Limaye','J56 Kalva','Mumbai','Maharashtra',412233,'9080706000','rlimaye@gmail.com');
select * from addressbook;
select First_name,Last_name from AddressBook
where City='Mumbai'
order by First_name asc;
-------------UC9-------------------------------------
alter table AddressBook add BookName varchar(50), BookType varchar(50);
UPDATE AddressBook set BookName='Book1', BookType='Family' WHERE First_name='Amrita';
UPDATE AddressBook set BookName='Book2', BookType='Family' WHERE Last_name='Bhide';
UPDATE AddressBook set BookName='Book3', BookType='Friends' WHERE First_name='Jeevan';
UPDATE AddressBook set BookName='Book4', BookType='Profession' WHERE Last_name='Sonavne';
UPDATE AddressBook set BookName='Book5', BookType='Family' WHERE First_name='Rohini';
select * from AddressBook;
--------------UC10------------------------------------
select count(First_name) as contacts from AddressBook where BookType='Family';