create database AddressBook_Service;
use AddressBook_Service;

create Table address_Book(id int identity (1,1) primary key, Firstname varchar(25), Lastname varchar (25), address varchar(25), City varchar (30), State varchar (25), Zip varchar (10), PhoneNumber varchar(15), Email varchar()); 
exec sp_help address_Book
select * from address_Book

insert into address_Book(Firstname,Lastname,address,City,State,Zip,PhoneNumber,Email) Values
( 'Ashutosh', 'Singh', 'Ghauhsabad', 'Varanasi', 'Uttar Pardesh', '221002', '9696896592', 'chauhansam94@gmail.com' ),
( 'Abhi', 'Singh', 'Ghauhsabad', 'noida', 'Uttar Pardesh', '221002', '7896968574', 'singhabhi94@gmail.com' ),
( 'Parth', 'Singh', 'Ghauhsabad', 'delhi', 'Uttar Pardesh', '221002', '9584858569', 'singhparth94@gmail.com' ),
( 'Sam', 'Singh', 'Ghauhsabad', 'goa', 'Uttar Pardesh', '221002', '9695455455', 'singhsam94@gmail.com' ),
( 'Ashish', 'Singh', 'Ghauhsabad', 'dehradun', 'Uttar Pardesh', '221002', '9692685632', 'singhashish94@gmail.com' ),
( 'Aditya', 'Singh', 'Ghauhsabad', 'lko', 'Uttar Pardesh', '221002', '9696895582', 'singhaditya94@gmail.com' );

Update address_Book set PhoneNumber = '7017659790' where Firstname = 'Aditya';
Update address_Book set Email = 'singhaditya94gmail.com' where Firstname = 'Aditya';

Delete From address_Book where Firstname = 'Ashish';
select * from address_Book 

Select City From address_Book Where Firstname = 'Ashutosh';
Select State From address_Book Where Firstname = 'Abhi'

Select COUNT(*) State From address_Book
Select COUNT(*) City From address_Book

Select * From address_Book Where City = 'lko' Order By Firstname

Alter Table address_Book Add ContactType varchar(27);
Update address_Book Set ContactType = 'Family' Where Firstname = 'Ashutosh';
Update address_Book Set ContactType = 'Family' Where PhoneNumber = '7896968574';
Update address_Book Set ContactType = 'Friends' Where Lastname = 'Singh';
Update address_Book Set ContactType = 'Friends' Where Email = 'singhsam94@gmail.com';
Update address_Book Set ContactType = 'Profession' Where Firstname = 'Aditya';

Select ContactType, Count(*) as CountNumber From address_Book Group By ContactType;
