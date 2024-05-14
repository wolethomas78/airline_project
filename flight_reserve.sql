CREATE DATABASE airlinedb;
USE airlinedb;
DROP DATABASE airlinedb;
DROP TABLE flight_mgt;
CREATE TABLE flight_mgt(
flight_ID int,
departure_time TIMESTAMP,
arrival_time TIMESTAMP,
airport_origin VARCHAR(30),
airport_destination VARCHAR(30),
available_seat VARCHAR(20),
CONSTRAINT flight_mgt_flight_ID_PK  PRIMARY KEY(flight_ID)
);

DESC flight_mgt;

DROP TABLE flight_mgt;

CREATE TABLE passenger_mgt(
passenger_ID INT,
first_name VARCHAR(50) NOT NULL,
middle_name VARCHAR(50),
last_name VARCHAR(50) NOT NULL,
email_address VARCHAR(50) NOT NULL,
phone_no INT NOT NULL,
paasport_number VARCHAR(30) NOT NULL,
CONSTRAINT passenger_mgt_passenger_ID_PK  PRIMARY KEY(passenger_ID)

);

DESC passenger_mgt;

CREATE TABLE airline_mgt(
airline_ID INT,
flight_ID INT,
airline_name VARCHAR(20) NOT NULL,
airline_contact VARCHAR(30) NOT NULL,
operating_region VARCHAR(30) NOT NULL,
CONSTRAINT airline_mgt_airline_ID_PK PRIMARY KEY(airline_ID),
CONSTRAINT airline_mgt_flight_ID_FK FOREIGN KEY(flight_ID) REFERENCES flight_mgt(flight_ID)
);

DESC airline_mgt;
DROP TABLE airline_mgt;

CREATE TABLE airport_mgt(
airport_code INT,
airport_name VARCHAR(30) NOT NULL,
airport_location VARCHAR(30) NOT NULL,
airport_facility VARCHAR(40),
CONSTRAINT airport_mgt_airport_code_PK  PRIMARY KEY(airport_code)
);

DESC airline_mgt;

CREATE TABLE booking_mgt(
booking_ID INT,
airport_code INT,
flight_details VARCHAR(20),
flight_ID INT,
passenger_info VARCHAR(40),
passenger_ID INT,
payment_status VARCHAR(40),
CONSTRAINT booking_mgt_booking_ID_PK PRIMARY KEY(booking_ID),
CONSTRAINT booking_mgt_flight_ID_FK FOREIGN KEY(flight_ID) REFERENCES flight_mgt(flight_ID),
CONSTRAINT booking_mgt_passenger_ID_FK FOREIGN KEY(passenger_ID) REFERENCES passenger_mgt(passenger_ID),
CONSTRAINT booking_mgt_airport_code_FK FOREIGN KEY(airport_code) REFERENCES airport_mgt(airport_code)
);

DROP TABLE booking_mgt;
--- ----------------------------------------------------BOOKING TABLE ---------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------

DROP TABLE booking_mgt;
DESC booking_mgt;
SELECT * FROM booking_mgt;

--- ------------------------------------------PAYMENT TABLE-------------------------------------------------------------------
--- --------------------------------------------------------------------------------------------------------------------------
CREATE TABLE payment(
payment_ID INT,
booking_ID INT UNIQUE,
payment_method VARCHAR(20) NOT NULL,
payment_amount DECIMAL(10,2) NOT NULL,
transaction_period TIMESTAMP,
CONSTRAINT payment_payment_ID_PK PRIMARY KEY(payment_ID),
CONSTRAINT payment_booking_ID_FK FOREIGN KEY(booking_ID) REFERENCES booking_mgt(booking_ID)
);

SELECT * FROM payment;

DROP TABLE payment;