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

ALTER  TABLE Addressbook add Ab_name varchar(20);
alter table Addressbook add Ab_type char(20);

update Addressbook set Ab_name = 'AddressBook1' where id = 2;
update Addressbook set Ab_name = 'AddressBook2' where id = 1;
update Addressbook set Ab_name = 'AddressBook3' where id IN (3,4);

update Addressbook set Ab_name = 'family' where id = 1;
update Addressbook set Ab_name = 'friends' where id = 2;
update Addressbook set Ab_name = 'profession' where id IN(3,4);
