CREATE TABLE MetroSystem (
    StationID INT PRIMARY KEY,
    StationName VARCHAR(100) NOT NULL,
    LineNumber INT NOT NULL,
    City VARCHAR(50),
    OpenYear INT CHECK (OpenYear >= 1900),
    DailyRidership INT CHECK (DailyRidership >= 0),
    Zone INT,
    TransferAvailable BOOLEAN,
    UniqueCode VARCHAR(10) UNIQUE,
    ParkingAvailable BOOLEAN
);



CREATE TABLE MetroSystem (
    StationID INT unique,StationName VARCHAR(100) NOT NULL,LineNumber INT NOT NULL,City VARCHAR(50),OpenYear INT CHECK (OpenYear >= 1900),
    DailyRidership INT CHECK (DailyRidership >= 0),Zone INT,TransferAvailable BOOLEAN,UniqueCode VARCHAR(10) UNIQUE,ParkingAvailable BOOLEAN
);

INSERT INTO MetroSystem VALUES(1, 'Central', 1, 'Metropolis', 1920, 50000, 1, TRUE, 'A12345', TRUE);
INSERT INTO MetroSystem VALUES(2, 'North Station', 2, 'Metropolis', 1980, 30000, 2, FALSE, 'B23456', FALSE);
INSERT INTO MetroSystem VALUES(3, 'East Side', 1, 'Metropolis', 1950, 25000, 3, TRUE, 'C34567', TRUE);
INSERT INTO MetroSystem VALUES(4, 'West End', 3, 'Metropolis', 1990, 40000, 4, TRUE, 'D45678', FALSE);
INSERT INTO MetroSystem VALUES(5, 'South Station', 2, 'Metropolis', 2005, 35000, 1, FALSE, 'E56789', TRUE);
INSERT INTO MetroSystem VALUES(6, 'Harbor View', 3, 'Metropolis', 2010, 15000, 5, TRUE, 'F67890', FALSE);
INSERT INTO MetroSystem VALUES(7, 'City Center', 1, 'Metropolis', 1975, 60000, 2, TRUE, 'G78901', TRUE);
INSERT INTO MetroSystem VALUES(8, 'Uptown', 2, 'Metropolis', 1965, 22000, 3, FALSE, 'H89012', FALSE);
INSERT INTO MetroSystem VALUES(9, 'Downtown', 1, 'Metropolis', 1935, 45000, 1, TRUE, 'I90123', TRUE);
INSERT INTO MetroSystem VALUES(10, 'Riverside', 3, 'Metropolis', 1985, 18000, 4, FALSE, 'J01234', FALSE);
INSERT INTO MetroSystem VALUES(11, 'Park Lane', 2, 'Metropolis', 2000, 20000, 5, TRUE, 'K12345', TRUE);
INSERT INTO MetroSystem VALUES(12, 'Garden City', 1, 'Metropolis', 1970, 30000, 2, TRUE, 'L23456', FALSE);
INSERT INTO MetroSystem VALUES(13, 'Industrial Area', 3, 'Metropolis', 1988, 25000, 3, FALSE, 'M34567', TRUE);
INSERT INTO MetroSystem VALUES(14, 'University', 2, 'Metropolis', 2015, 27000, 1, TRUE, 'N45678', FALSE);
INSERT INTO MetroSystem VALUES(15, 'Tech Park', 1, 'Metropolis', 1995, 5000, 4, TRUE, 'O56789', TRUE);
INSERT INTO MetroSystem VALUES(16, 'Historical Quarter', 3, 'Metropolis', 1940, 10000, 5, FALSE, 'P67890', FALSE);
INSERT INTO MetroSystem VALUES(17, 'Fashion District', 2, 'Metropolis', 2008, 33000, 3, TRUE, 'Q78901', TRUE);
INSERT INTO MetroSystem VALUES(18, 'Business Bay', 1, 'Metropolis', 2012, 28000, 1, FALSE, 'R89012', FALSE);
INSERT INTO MetroSystem VALUES(19, 'Suburban', 3, 'Metropolis', 1982, 15000, 2, TRUE, 'S90123', TRUE);
INSERT INTO MetroSystem VALUES(20, 'Countryside', 2, 'Metropolis', 2003, 12000, 4, FALSE, 'T01234', FALSE);

select* from MetroSystem;
desc MetroSystem;

alter table MetroSystem modify column city varchar(50)not null;

alter table MetroSystem add constraint station_uni unique(stationname);

alter table MetroSystem add constraint line_chk check (linenumber>0);
alter table MetroSystem add constraint transfer_chk check (transferavailable>=0);




create  table chat_center(id int not null,c_name varchar(30) unique,c_loc varchar(30) not null,popular_chat varchar(30) unique,no_of_chat int ,
min_price bigint,max_price bigint,no_of_emp int constraint no_of_emp_chk check (no_of_emp>6),light_bill int,
per_day_income bigint constraint income_chk check(per_day_income>500));

desc chat_center;
select*from chat_center;
insert into chat_center values(1,'divyachats','rajajinagar','pizza',50,100,300,7,300,5000);
insert into chat_center values(2,'laxmichats','rrnagr','burger',40,70,300,8,150,6000);
insert into chat_center values(3,'darshanachats','gkk','dosa',30,60,350,7,300,7000);
insert into chat_center values(4,'kalpanachats','bgm','juices',60,100,350,7,300,5000);
insert into chat_center values(5,'deepakchats','btm','samosa',30,150,500,8,125,4000);
insert into chat_center values(6,'shrikantchats','gokak','bajji',20,100,500,7,320,3000);
insert into chat_center values(7,'kushichats','naragunda','gobi',20,30,500,7,195,6520);
insert into chat_center values(8,'arunchats','gkkfalls','cha',10,30,60,7,0,2150);
insert into chat_center values(9,'kiranchats','konnur','panipure',30,200,800,7,30,3500);
insert into chat_center values(10,'irannachats','hydrbad','eggrol',20,130,500,7,600,3500);
insert into chat_center values(11,'anuchats','mysore','icecream',40,100,300,8,220,5000);
insert into chat_center values(12,'vikaschats','vijaynagar','friedrice',40,70,650,7,150,3000);
insert into chat_center values(13,'poojachats','chk','eggrice',30,60,700,7,320,3560);
insert into chat_center values(14,'akashchats','athani','aluotikki',20,100,550,7,196,5060);
insert into chat_center values(15,'tappuchats','shivajinagar','paddu',30,150,650,8,245,1200);
insert into chat_center values(16,'sanjuchats','basvangudi','fries',20,100,350,7,260,1800);
insert into chat_center values(17,'rishichats','jayanagar','sandwitch',20,30,650,8,321,2200);
insert into chat_center values(18,'bhavyachats','malleswarm','maggie',10,30,200,7,60,3500);
insert into chat_center values(19,'priyachats','koramangal','masalpuri',30,200,850,8,105,4500);
insert into chat_center values(20,'madhuchats','mahalaxmilayout','noodles',20,130,450,8,1,9500);

alter table chat_center add column no_of_chats int not null;

alter table chat_center modify column c_name varchar(30) not null;
alter table chat_center modify column c_loc varchar(30) null;

alter table chat_center add constraint id_uni unique (id);

alter table chat_center add constraint no_of_chat_chk check(no_of_chat<100);
alter table chat_center add constraint  light_bill_chk check(light_bill<=700);






