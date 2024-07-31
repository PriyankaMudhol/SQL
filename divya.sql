CREATE DATABASE divya;
USE divya;

create table hospital(Hospital_Name varchar(20),Field_Name Varchar(20),Ward_No int,phone_Num Bigint,doctor_name varchar(10),patient_Name varchar(15),disease_name varchar(20),medicine_name varchar(20),patient_age int);

INSERT INTO HOSPITAL values('Apollo' ,'family physician',1,8867556789,'shekar','amit','physco','alochal',14);
INSERT INTO HOSPITAL values('manipal' ,'internist',2,8867554758,'priya','pinku','mad','ghb',81);
INSERT INTO HOSPITAL values('BMS' ,'psychaistrist',3,9632459011,'prema','teju','pcod','fentanyl',45);
INSERT INTO HOSPITAL values('Fortis' ,'surgeon',6,8867554758,'tejas','heenu','cold','cocaine',12);
INSERT INTO HOSPITAL values('Medanta','health care' ,4,9632758405,'goru','pattya','cough','coke',34);
INSERT INTO HOSPITAL values('Artemis','psychologist',5, 9561642150,'sejal','hima','corona','antacids',24);
INSERT INTO HOSPITAL values('Max' ,'public health',7,9567435678,'pratik','avadhut','dengu','cetrizine',25);
INSERT INTO HOSPITAL values('BLK' ,'pharmacist',9,8885643789,'nevam','pajju','maleria','paracetamol',27);
INSERT INTO HOSPITAL values('Narayan','occupational ' ,8,8776544586,'chetan','rohan','chikan pocs','phenylephine',45);
INSERT INTO HOSPITAL values('Aster','veterinary' ,10,9807567890,'raju','adrash','stomach pain','cheston',30);
INSERT INTO HOSPITAL values('A R' ,'pharmacy tech',81,9087697808,'venas','geeta','headache','sinus',29);
INSERT INTO HOSPITAL values('Revive' ,'optometrist',21,8907890767,'babu','vedani','aids','sudafed',32);
INSERT INTO HOSPITAL values('global' ,'radiolagist',12,8905467890,'rohit','sushma','hiv','analgesics',33);
INSERT INTO HOSPITAL values('Kamakashi','medical assistant',41, 9780654738,'gopi','akansha','lungs cancer','antipyretics',34);
INSERT INTO HOSPITAL values('Homeocare','audiolagist' ,31,8567890765,'ravi','akshu','kidney stone','albuterol',42);
INSERT INTO HOSPITAL values('Manasa' ,'radiolagist',13,9765805432,'ramesh','preeti','breast caner','amlodipine',40);
INSERT INTO HOSPITAL values('Kids' ,'nusing',14,9708654389,'ojas','vijay','thorat cancer','omeprazole',41);
INSERT INTO HOSPITAL values('AK ayurvedic' ,'physician',15,921376890,'omkar','shehal','blood cancer','losatran',38);
INSERT INTO HOSPITAL values('HCG Cancer' ,'cancer head',16,9546789043,'viraj','yash','pneumonia','gabapentin',36);
INSERT INTO HOSPITAL values('Ahmadabad civil' ,'scientist',17, 9345097654,'akash','sham','typiod','lisinopril',48);
INSERT INTO HOSPITAL values('Aims' ,'aims head',18,9834678907,'bagya','soham','zundice','metroprolal',42);

select * from HOSPITAL;

CREATE TABLE tourist_places (places_name varchar (30), id int, enterance_fee bigint, feed_back varchar(50),no_of_passenger int,
no_of_vehicle int,vehicle_name varchar (20), amount_spent bigint,no_of_placevisit int, tourist_guide_name varchar(20));

INSERT INTO tourist_places values('gokak falls',123,200,'good',10,5,'bike',100,2,'laxmi');
INSERT INTO tourist_places values('lalbagh',456,100,'good',20,10,'bus',250,3,'bhavya');
INSERT INTO tourist_places values('cubbon park',789,300,'good',30,15,'car',260,4,'swati');
INSERT INTO tourist_places values('iskon temple',741,400,'good',40,20,'van',270,5,'anu');
INSERT INTO tourist_places values('mysore palace',852,500,'good',50,25,'bike',280,6,'samarth');
INSERT INTO tourist_places values('gokarna',963,600,'good',60,30,'bus',290,7,'lalita');
INSERT INTO tourist_places values('madikeri',159,700,'good',70,35,'car',300,8,'changond');
INSERT INTO tourist_places values('hampi',357,800,'good',80,40,'van',310,9,'soni');
INSERT INTO tourist_places values('nandi hills',410,900,'good',90,45,'bike',320,10,'tafseen');
INSERT INTO tourist_places values('udupi',1520,1000,'good',110,50,'car',330,11,'divya');
INSERT INTO tourist_places values('dandeli',630,200,'good',120,55,'bus',350,12,'revati');
INSERT INTO tourist_places values('murdeshwar',740,300,'average',130,60,'van',340,13,'sumita');
INSERT INTO tourist_places values('jog falls',850,400,'average',140,65,'car',360,14,'aly');
INSERT INTO tourist_places values('belur',960,500,'average',150,70,'bus',370,15,'rahul');
INSERT INTO tourist_places values('kudremukh',710,600,'average',160,75,'van',380,16,'karan');
INSERT INTO tourist_places values('vidhana soudha',802,700,'average',170,80,'bike',390,17,'arjun');
INSERT INTO tourist_places values('cubbon park',903,800,'average',180,85,'car',400,18,'payal');
INSERT INTO tourist_places values('commercial street',401,900,'average',190,90,'van',410,19,'kavya');
INSERT INTO tourist_places values('ulsoor lake',502,200,'average',200,95,'bus',420,20,'sana');
INSERT INTO tourist_places values('freedom park',603,300,'average',210,100,'bike',430,21,'kiran');
INSERT INTO tourist_places values('shivoham shiva temple',548,200,'average',200,105,'thar',440,22,'deva');

SELECT  * FROM tourist_places;






