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

INSERT INTO addressbook VALUES
(1,'Suresh','Patil','Khopta','Uran','Maharashtra','424112','1234567890', 'Suresh.m@gmail.com'),
(2,'Sumit','Khot','Ulwe','NaviMumbai','Maharashtra','420166','9191919291', 'Sumit.k@gmail.com'),
(3,'Mayu','Mhatre','Uran','NaviMumbai','MH','487879','4567890125', 'Mayu.m@yahoo.com'),
(4,'Kumar','k','Madhya Pradesh','Gwalior','MP','43342','6577567890', 'kumar.m@gmail.com');

SELECT * FROM addressbook;
UPDATE addressbook SET firstname = 'Suraj'
WHERE id = 1; 

SELECT * from addressbook where firstname = 'Suraj';
SELECT firstname from addressbook where firstname = 'Suraj';