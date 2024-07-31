1)CREATE 2 (state_info, scam_info) with 10 columns
2)ADD 5 Columns using alter command.
3)rename 5 columns using alter command.
4)change datatype for 5 columns.
5)Insert 20 data for each table.
6)update 10 data for different columns for each table.
7)delete 3 data from each table.
8)Fetch data using AND OR IN NOTIN.

CREATE DATABASE State;
USE State;

CREATE TABLE state_info (
    state_id INT PRIMARY KEY,
    state_name VARCHAR(50),
    population INT,
    area FLOAT,
    gdp FLOAT,
    literacy_rate FLOAT,
    governor VARCHAR(50),
    capital VARCHAR(50),
    established_year INT,
    timezone VARCHAR(50)
);

CREATE TABLE scam_info (
    scam_id INT PRIMARY KEY,
    scam_name VARCHAR(100),
    year INT,
    amount FLOAT,
    involved_person VARCHAR(50),
    country VARCHAR(50),
    type VARCHAR(50),
    status VARCHAR(50),
    report_date DATE,
    resolution_date DATE
);


ALTER TABLE state_info
ADD COLUMN avg_income FLOAT,
ADD COLUMN unemployment_rate FLOAT,
ADD COLUMN major_city VARCHAR(50),
ADD COLUMN tourist_attraction VARCHAR(50),
ADD COLUMN historical_significance TEXT;

ALTER TABLE scam_info
ADD COLUMN perpetrator VARCHAR(50),
ADD COLUMN victim VARCHAR(50),
ADD COLUMN region VARCHAR(50),
ADD COLUMN impact TEXT,
ADD COLUMN legal_action TEXT;


ALTER TABLE state_info
RENAME COLUMN governor TO governor_name,
RENAME COLUMN timezone TO time_zone,
RENAME COLUMN population TO total_population,
RENAME COLUMN gdp TO gdp_in_billions,
RENAME COLUMN area TO area_in_sq_km;

ALTER TABLE scam_info
RENAME COLUMN year TO scam_year,
RENAME COLUMN amount TO scam_amount,
RENAME COLUMN status TO scam_status,
RENAME COLUMN report_date TO date_reported,
RENAME COLUMN resolution_date TO date_resolved;


ALTER TABLE state_info
MODIFY COLUMN literacy_rate DECIMAL(5, 2),
MODIFY COLUMN established_year CHAR(4),
MODIFY COLUMN total_population BIGINT,
MODIFY COLUMN gdp_in_billions DECIMAL(12, 2),
MODIFY COLUMN avg_income DECIMAL(10, 2);

ALTER TABLE scam_info
MODIFY COLUMN scam_year CHAR(4),
MODIFY COLUMN scam_amount DECIMAL(15, 2),
MODIFY COLUMN date_reported DATETIME,
MODIFY COLUMN date_resolved DATETIME,
MODIFY COLUMN legal_action VARCHAR(255);


INSERT INTO state_info (state_id, state_name, total_population, area_in_sq_km, gdp_in_billions, literacy_rate, governor_name, capital, established_year, time_zone, avg_income, unemployment_rate, major_city, tourist_attraction, historical_significance) VALUES
(1, 'State1', 10000000, 12345.67, 123.45, 89.12, 'Governor1', 'Capital1', '1850', 'GMT+5', 12345.67, 5.5, 'City1', 'Attraction1', 'Significance1'),
(2, 'State2', 20000000, 23456.78, 234.56, 90.34, 'Governor2', 'Capital2', '1900', 'GMT+6', 23456.78, 6.0, 'City2', 'Attraction2', 'Significance2'),
(3, 'State3', 15000000, 34567.89, 345.67, 91.45, 'Governor3', 'Capital3', '1950', 'GMT+7', 34567.89, 4.5, 'City3', 'Attraction3', 'Significance3'),
(4, 'State4', 12000000, 45678.90, 456.78, 92.56, 'Governor4', 'Capital4', '1855', 'GMT+8', 45678.90, 5.0, 'City4', 'Attraction4', 'Significance4'),
(5, 'State5', 18000000, 56789.01, 567.89, 88.67, 'Governor5', 'Capital5', '1860', 'GMT+9', 56789.01, 6.5, 'City5', 'Attraction5', 'Significance5'),
(6, 'State6', 16000000, 67890.12, 678.90, 87.78, 'Governor6', 'Capital6', '1870', 'GMT+10', 67890.12, 7.5, 'City6', 'Attraction6', 'Significance6'),
(7, 'State7', 14000000, 78901.23, 789.01, 86.89, 'Governor7', 'Capital7', '1880', 'GMT+11', 78901.23, 8.5, 'City7', 'Attraction7', 'Significance7'),
(8, 'State8', 13000000, 89012.34, 890.12, 85.90, 'Governor8', 'Capital8', '1890', 'GMT+12', 89012.34, 9.5, 'City8', 'Attraction8', 'Significance8'),
(9, 'State9', 17000000, 90123.45, 901.23, 84.01, 'Governor9', 'Capital9', '1905', 'GMT+1', 90123.45, 10.5, 'City9', 'Attraction9', 'Significance9'),
(10, 'State10', 11000000, 12345.56, 123.56, 83.12, 'Governor10', 'Capital10', '1910', 'GMT+2', 12345.56, 11.5, 'City10', 'Attraction10', 'Significance10'),
(11, 'State11', 19000000, 23456.67, 234.67, 82.23, 'Governor11', 'Capital11', '1920', 'GMT+3', 23456.67, 12.5, 'City11', 'Attraction11', 'Significance11'),
(12, 'State12', 21000000, 34567.78, 345.78, 81.34, 'Governor12', 'Capital12', '1930', 'GMT+4', 34567.78, 13.5, 'City12', 'Attraction12', 'Significance12'),
(13, 'State13', 22000000, 45678.89, 456.89, 80.45, 'Governor13', 'Capital13', '1940', 'GMT+5', 45678.89, 14.5, 'City13', 'Attraction13', 'Significance13'),
(14, 'State14', 23000000, 56789.90, 567.90, 79.56, 'Governor14', 'Capital14', '1955', 'GMT+6', 56789.90, 15.5, 'City14', 'Attraction14', 'Significance14'),
(15, 'State15', 24000000, 67890.01, 678.01, 78.67, 'Governor15', 'Capital15', '1960', 'GMT+7', 67890.01, 16.5, 'City15', 'Attraction15', 'Significance15'),
(16, 'State16', 25000000, 78901.12, 789.12, 77.78, 'Governor16', 'Capital16', '1970', 'GMT+8', 78901.12, 17.5, 'City16', 'Attraction16', 'Significance16'),
(17, 'State17', 26000000, 89012.23, 890.23, 76.89, 'Governor17', 'Capital17', '1980', 'GMT+9', 89012.23, 18.5, 'City17', 'Attraction17', 'Significance17'),
(18, 'State18', 27000000, 90123.34, 901.34, 75.90, 'Governor18', 'Capital18', '1990', 'GMT+10', 90123.34, 19.5, 'City18', 'Attraction18', 'Significance18'),
(19, 'State19', 28000000, 12345.45, 123.45, 74.01, 'Governor19', 'Capital19', '2000', 'GMT+11', 12345.45, 20.5, 'City19', 'Attraction19', 'Significance19'),
(20, 'State20', 29000000, 23456.56, 234.56, 73.12, 'Governor20', 'Capital20', '2010', 'GMT+12', 23456.56, 21.5, 'City20', 'Attraction20', 'Significance20');


INSERT INTO scam_info (scam_id, scam_name, scam_year, scam_amount, involved_person, country, type, scam_status, date_reported, date_resolved, perpetrator, victim, region, impact, legal_action) VALUES
(1, 'Scam1', '2010', 1000000.00, 'Person1', 'Country1', 'Type1', 'Resolved', '2010-01-01 12:00:00', '2011-01-01 12:00:00', 'Perpetrator1', 'Victim1', 'Region1', 'Impact1', 'LegalAction1'),
(2, 'Scam2', '2012', 2000000.00, 'Person2', 'Country2', 'Type2', 'Pending', '2012-02-02 12:00:00', '2013-02-02 12:00:00', 'Perpetrator2', 'Victim2', 'Region2', 'Impact2', 'LegalAction2'),
(3, 'Scam3', '2014', 3000000.00, 'Person3', 'Country3', 'Type3', 'Ongoing', '2014-03-03 12:00:00', NULL, 'Perpetrator3', 'Victim3', 'Region3', 'Impact3', 'LegalAction3'),
(4, 'Scam4', '2016', 4000000.00, 'Person4', 'Country4', 'Type4', 'Resolved', '2016-04-04 12:00:00', '2017-04-04 12:00:00', 'Perpetrator4', 'Victim4', 'Region4', 'Impact4', 'LegalAction4'),
(5, 'Scam5', '2018', 5000000.00, 'Person5', 'Country5', 'Type5', 'Pending', '2018-05-05 12:00:00', '2019-05-05 12:00:00', 'Perpetrator5', 'Victim5', 'Region5', 'Impact5', 'LegalAction5'),
(6, 'Scam6', '2020', 6000000.00, 'Person6', 'Country6', 'Type6', 'Ongoing', '2020-06-06 12:00:00', NULL, 'Perpetrator6', 'Victim6', 'Region6', 'Impact6', 'LegalAction6'),
(7, 'Scam7', '2011', 7000000.00, 'Person7', 'Country7', 'Type7', 'Resolved', '2011-07-07 12:00:00', '2012-07-07 12:00:00', 'Perpetrator7', 'Victim7', 'Region7', 'Impact7', 'LegalAction7'),
(8, 'Scam8', '2013', 8000000.00, 'Person8', 'Country8', 'Type8', 'Pending', '2013-08-08 12:00:00', '2014-08-08 12:00:00', 'Perpetrator8', 'Victim8', 'Region8', 'Impact8', 'LegalAction8'),
(9, 'Scam9', '2015', 9000000.00, 'Person9', 'Country9', 'Type9', 'Ongoing', '2015-09-09 12:00:00', NULL, 'Perpetrator9', 'Victim9', 'Region9', 'Impact9', 'LegalAction9'),
(10, 'Scam10', '2017', 10000000.00, 'Person10', 'Country10', 'Type10', 'Resolved', '2017-10-10 12:00:00', '2018-10-10 12:00:00', 'Perpetrator10', 'Victim10', 'Region10', 'Impact10', 'LegalAction10'),
(11, 'Scam11', '2019', 11000000.00, 'Person11', 'Country11', 'Type11', 'Pending', '2019-11-11 12:00:00', '2020-11-11 12:00:00', 'Perpetrator11', 'Victim11', 'Region11', 'Impact11', 'LegalAction11'),
(12, 'Scam12', '2021', 12000000.00, 'Person12', 'Country12', 'Type12', 'Ongoing', '2021-12-12 12:00:00', NULL, 'Perpetrator12', 'Victim12', 'Region12', 'Impact12', 'LegalAction12'),
(13, 'Scam13', '2022', 13000000.00, 'Person13', 'Country13', 'Type13', 'Resolved', '2022-01-13 12:00:00', '2023-01-13 12:00:00', 'Perpetrator13', 'Victim13', 'Region13', 'Impact13', 'LegalAction13'),
(14, 'Scam14', '2010', 14000000.00, 'Person14', 'Country14', 'Type14', 'Pending', '2010-02-14 12:00:00', '2011-02-14 12:00:00', 'Perpetrator14', 'Victim14', 'Region14', 'Impact14', 'LegalAction14'),
(15, 'Scam15', '2012', 15000000.00, 'Person15', 'Country15', 'Type15', 'Ongoing', '2012-03-15 12:00:00', NULL, 'Perpetrator15', 'Victim15', 'Region15', 'Impact15', 'LegalAction15'),
(16, 'Scam16', '2014', 16000000.00, 'Person16', 'Country16', 'Type16', 'Resolved', '2014-04-16 12:00:00', '2015-04-16 12:00:00', 'Perpetrator16', 'Victim16', 'Region16', 'Impact16', 'LegalAction16'),
(17, 'Scam17', '2016', 17000000.00, 'Person17', 'Country17', 'Type17', 'Pending', '2016-05-17 12:00:00', '2017-05-17 12:00:00', 'Perpetrator17', 'Victim17', 'Region17', 'Impact17', 'LegalAction17'),
(18, 'Scam18', '2018', 18000000.00, 'Person18', 'Country18', 'Type18', 'Ongoing', '2018-06-18 12:00:00', NULL, 'Perpetrator18', 'Victim18', 'Region18', 'Impact18', 'LegalAction18'),
(19, 'Scam19', '2020', 19000000.00, 'Person19', 'Country19', 'Type19', 'Resolved', '2020-07-19 12:00:00', '2021-07-19 12:00:00', 'Perpetrator19', 'Victim19', 'Region19', 'Impact19', 'LegalAction19'),
(20, 'Scam20', '2022', 20000000.00, 'Person20', 'Country20', 'Type20', 'Pending', '2022-08-20 12:00:00', '2023-08-20 12:00:00', 'Perpetrator20', 'Victim20', 'Region20', 'Impact20', 'LegalAction20');



UPDATE state_info
SET total_population = 11000000, avg_income = 13000.00
WHERE state_id = 1;

UPDATE state_info
SET total_population = 21000000, avg_income = 24000.00
WHERE state_id = 2;

UPDATE state_info
SET area_in_sq_km = 15000.00, literacy_rate = 92.00
WHERE state_id = 3;

UPDATE state_info
SET governor_name = 'NewGovernor', capital = 'NewCapital'
WHERE state_id = 4;

UPDATE state_info
SET gdp_in_billions = 600.00, unemployment_rate = 4.0
WHERE state_id = 5;

UPDATE state_info
SET major_city = 'NewCity', tourist_attraction = 'NewAttraction'
WHERE state_id = 6;

UPDATE state_info
SET time_zone = 'GMT+3', avg_income = 30000.00
WHERE state_id = 7;

UPDATE state_info
SET historical_significance = 'NewSignificance', literacy_rate = 95.00
WHERE state_id = 8;

UPDATE state_info
SET area_in_sq_km = 99999.99, governor_name = 'AnotherGovernor'
WHERE state_id = 9;

UPDATE state_info
SET established_year = '2025', capital = 'FutureCapital'
WHERE state_id = 10;



UPDATE scam_info
SET scam_amount = 1500000.00, scam_status = 'Pending'
WHERE scam_id = 1;

UPDATE scam_info
SET scam_amount = 2500000.00, scam_status = 'Resolved'
WHERE scam_id = 2;

UPDATE scam_info
SET involved_person = 'NewPerson3', date_reported = '2014-03-15 15:00:00'
WHERE scam_id = 3;

UPDATE scam_info
SET scam_year = '2017', impact = 'NewImpact4'
WHERE scam_id = 4;

UPDATE scam_info
SET date_resolved = '2019-06-15 12:00:00', perpetrator = 'NewPerpetrator5'
WHERE scam_id = 5;

UPDATE scam_info
SET scam_amount = 8000000.00, scam_status = 'Ongoing'
WHERE scam_id = 6;

UPDATE scam_info
SET scam_name = 'UpdatedScam7', legal_action = 'UpdatedLegalAction7'
WHERE scam_id = 7;

UPDATE scam_info
SET date_reported = '2014-11-01 09:00:00', victim = 'UpdatedVictim8'
WHERE scam_id = 8;

UPDATE scam_info
SET scam_year = '2021', type = 'UpdatedType9'
WHERE scam_id = 9;

UPDATE scam_info
SET country = 'UpdatedCountry10', impact = 'UpdatedImpact10'
WHERE scam_id = 10;



DELETE FROM state_info WHERE state_id IN (3, 4, 5);

DELETE FROM scam_info WHERE scam_id IN (3, 4, 5);


-- Fetch data using AND
SELECT * FROM state_info WHERE total_population > 15000000 AND gdp_in_billions > 150.00;

-- Fetch data using OR
SELECT * FROM state_info WHERE total_population > 15000000 OR gdp_in_billions > 150.00;

-- Fetch data using IN
SELECT * FROM state_info WHERE state_name IN ('State1', 'State2');

-- Fetch data using NOT IN
SELECT * FROM state_info WHERE state_name NOT IN ('State1', 'State2');



-- Fetch data using AND
SELECT * FROM scam_info WHERE scam_amount > 1500000.00 AND scam_status = 'Resolved';

-- Fetch data using OR
SELECT * FROM scam_info WHERE scam_amount > 1500000.00 OR scam_status = 'Resolved';

-- Fetch data using IN
SELECT * FROM scam_info WHERE scam_name IN ('Scam1', 'Scam2');

-- Fetch data using NOT IN
SELECT * FROM scam_info WHERE scam_name NOT IN ('Scam1', 'Scam2');
