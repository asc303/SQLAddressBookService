create database AddressBook_Service;
use AddressBook_Service;

create Table address_Book(id int identity (1,1) primary key, Firstname varchar(25), Lastname varchar (25), address varchar(25), City varchar (30), State varchar (25), Zip varchar (10), PhoneNumber varchar(15), Email varchar()); 
exec sp_help address_Book
select * from address_Book

