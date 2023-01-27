/* 
  AUTHOR: AIMAR ABSATTAROV
  TOPIC: DATABASE FOR RIELTOR BOOKING SERVICE
  CONTENT: CREATING TABLES AND SETTING ENTITY RELATIONSHIPS
*/

CREATE TABLE location(
id INT PRIMARY KEY,
country VARCHAR(32) NOT NULL,
city VARCHAR(64) NOT NULL);

---------------------------

CREATE TABLE agency(
id INT PRIMARY KEY,
name VARCHAR(32) NOT NULL,
email VARCHAR(32) NOT NULL,
phone VARCHAR(32),
location_id INT,
CONSTRAINT fk1_location 
	FOREIGN KEY (location_id) REFERENCES location(id));

---------------------------

CREATE TABLE rieltor(
id INT PRIMARY KEY,
name VARCHAR(32) NOT NULL,
surname VARCHAR(32) NOT NULL,
email VARCHAR(32) NOT NULL,
phone VARCHAR(32),
agency_id INT, 
location_id INT,
CONSTRAINT fk1_agency 
	FOREIGN KEY (agency_id) REFERENCES agency(id),
CONSTRAINT fk2_location 
	FOREIGN KEY (location_id) REFERENCES location(id));
	
----------------------------

CREATE TABLE client(
id INT PRIMARY KEY,
name VARCHAR(32) NOT NULL,
surname VARCHAR(32) NOT NULL,
email VARCHAR(32) NOT NULL,
phone VARCHAR(32),
location_id INT,
CONSTRAINT fk1_location 
	FOREIGN KEY (location_id) REFERENCES location(id));
	
-----------------------------

CREATE TABLE contract(
id INT PRIMARY KEY,
date DATE NOT NULL,
type VARCHAR(16) NOT NULL,
client_id INT,
rieltor_id INT,
CONSTRAINT fk1_client 
	FOREIGN KEY (client_id) REFERENCES client(id),
CONSTRAINT fk2_rieltor 
	FOREIGN KEY (rieltor_id) REFERENCES rieltor(id));
	
-----------------------------

CREATE TABLE bill(
id INT PRIMARY KEY,
amount INT NOT NULL,
contract_id INT,
CONSTRAINT fk1_contract 
	FOREIGN KEY (contract_id) REFERENCES contract(id));
	
-----------------------------

CREATE TABLE review(
id INT PRIMARY KEY,
comment VARCHAR(255),
rate INT NOT NULL,
client_id INT,
rieltor_id INT,
CONSTRAINT fk1_client 
	FOREIGN KEY (client_id) REFERENCES client(id),
CONSTRAINT fk2_rieltor 
	FOREIGN KEY (rieltor_id) REFERENCES rieltor(id));

