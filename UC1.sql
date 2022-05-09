create database AddressBookService;
use AddressBookService;
CREATE TABLE AddressBook (
		id int not null auto_increment primary key,
		firstname varchar(20) NOT NULL, 
        lastname varchar(20) NOT NULL,
        address varchar(100),
        city varchar(20) NOT NULL,
        state varchar(20) NOT NULL,
        zip integer(6),
        phonenumber varchar(10) NOT NULL,
        email varchar(20) NOT NULL UNIQUE
);
desc AddressBook;

INSERT INTO Addressbook VALUES
(1,'Suresh','Patil','Khopta','Uran','Maharashtra','424112','1234567890', 'Suresh.m@gmail.com'),
(2,'Sumit','Khot','Ulwe','NaviMumbai','Maharashtra','420166','9191919291', 'Sumit.k@gmail.com'),
(3,'Mayu','Mhatre','Uran','NaviMumbai','MH','487879','4567890125', 'Mayu.m@yahoo.com'),
(4,'Kumar','k','Madhya Pradesh','Gwalior','MP','43342','6577567890', 'kumar.m@gmail.com');

SELECT * FROM Addressbook;
UPDATE Addressbook SET firstname = 'Suraj'
WHERE id = 1; 

SELECT * from Addressbook where firstname = 'Suraj';
SELECT firstname from Addressbook where firstname = 'Suraj';

DELETE from Addressbook WHERE id =4 ;
SELECT * FROM Addressbook WHERE firstname = 'kumar';

SELECT * from Addressbook where city = 'Uran' OR state = 'MH';

SELECT  city, state, COUNT(*) from Addressbook where city = 'Uran' AND state = 'Maharashtra';

SELECT * FROM Addressbook WHERE state = 'Maharashtra' ORDER BY firstname ASC;
SELECT * FROM Addressbook WHERE state = 'Maharashtra' ORDER BY firstname DESC;

SELECT ab_type, COUNT(*) FROM addressbook GROUP BY ab_type;
insert into addressbook(id,firstname,lastname,address,city,state,zip,phonenumber,email,ab_name,ab_type)
 values(4,'Viraj', 'Thakur', 'satara', 'satara', 'Maharashtra','424112', '1234567890',	'vir@gmail.com',	'AddressBook2',	'friends');
 CREATE TABLE addressbooks (
		id int not null auto_increment primary key,
		firstname varchar(20) NOT NULL, 
        lastname varchar(20) NOT NULL,
        address varchar(100),
        city varchar(20) NOT NULL,
        state varchar(20) NOT NULL,
        zip integer(6),
        phonenumber varchar(10) NOT NULL,
        email varchar(20) NOT NULL UNIQUE
);
desc addressbooks;

create table addressbooks_name(
  id int not null auto_increment primary key,
  name varchar (20) not null,
  ab_id int ,
  foreign key (ab_id)references addressbooks(id)  
);
desc addressbooks_name;

create table addressbooks_type(
id int not null primary key,
type varchar (20)
);
desc addressbooks_type;

create table addressbooks_abtype(
  a_id int not null,
  t_id int not null,
  foreign key(a_id) references addressbooks(id),
  foreign key(t_id) references addressbooks_type(id),
  primary key(a_id,t_id)
);

INSERT INTO addressbooks VALUES
(1,'Sayyam','Gaikwad','Owla','Panvel','Maharashtra','424112','1234567890', 'vishaka.m@gmail.com'),
(2,'Rohan','Patil','Khopta','Uran','Maharashtra','420166','9191919291', 'kunal.p@gmail.com'),
(3,'shravani','Khot','panvel','Mh','Maharashtra','487879','4567890125', 'shanvika.k@yahoo.com'),
(4,'priyesh','Mhatre','Navin Sheva','Uran','Maharashtra','43342','6577567890', 'pihu.m@gmail.com');
 
insert into addressbooks_name values (1,'AdddressBook1', 2); 

insert into addressbooks_type
values(1,'family');
insert into addressbooks_type
values(2,'friends');
insert into addressbooks_type
values(3,'profession');

insert into addressbooks_abtype(a_id,t_id)values(1,1);

select * from addressbooks;
select * from addressbooks_name;
select * from addressbooks_type;
select * from addressbooks_abtype;

SELECT * from addressbooks inner join addressbooks_name where city = 'Uran' OR state = 'Maharashtra';

SELECT  city, state, COUNT(*) from addressbooks  where city = 'Panvel' AND state = 'Maharashtra';

SELECT * FROM addressbooks WHERE state = 'Maharashtra' ORDER BY firstname ASC;

SELECT type, count(*) FROM addressbooks join addressbooks_type group by type;

select * from addressbooks inner join addressbooks_type ON addressbooks.id = 1 and addressbooks_type.id IN(1,2);

select * from addressbooks inner join addressbooks_name inner join addressbooks_type ON addressbooks.id = 1 and addressbooks_name.id= '1' and addressbooks_type.id IN (1);
