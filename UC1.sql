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