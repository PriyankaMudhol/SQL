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







