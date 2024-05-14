# Background
## Airline Project
The creation of Airline Reservation System is very important in order to manage flight bookings effectively. This project will explore the crucial components and stages involved in creating a system for flight booking to ensure there is seamless running of operations and its user friendly. MYSQL will be the programming language.

![](airportpix.png)

## Introduction
Using MYSQL to designing a database according to this project for Airline Reservation System is meant to manage several entities like: flights, passengers, airlines, airports, bookings and payments. This should support the functionalities like searching for availability of flight, making reservations, manage pessengers' information and processing of payments securely. The design of this database will address the requirements of airline operators and travel agencies in which they can easily align their operations and provide a seamless bookingexperience to their customers.

## Flight Reservation System Features:
These are the following features of the airline reservation system.
- Flight Management: Efficiently manage flight information, including flight numbers, departure and arrival times, origin and destination airports, and available seats.
- Passenger Management: Maintain passenger details, such as names, contact information, and passport numbers.
- Airline Management: Keep track of airline information, including airline names, contact details, and operating regions.
- Airport Management: Store information about airports, including airport codes, names, locations, and facilities.
- Booking Management: Handle flight reservations, including booking IDs, flight details, passenger information, and payment status.
- Payment Processing: Securely process payments for flight bookings, including transaction IDs, payment methods, and amounts.

 ## Entities and Attributes for the Flight Reservation System
Entities define the building blocks of this database, representing the fundamental objects or concepts that need to be stored and managed. Attributes define the characteristics or properties of each entity.

## Flight_mgt: The ENTITY here represents individual flights operated by airlines. 
- Flight_ID (Primary Key): Unique identifier for each flight.
- Departure_Time: Date and time of flight departure.
- Arrival_Time: Date and time of flight arrival.
- Airport_Origin: Three-letter code representing the origin airport.
- Airport_Destination: Three-letter code representing the destination airport.
- Available_Seat: Number of available seats on the flight.

## Passenger_mgt: Represents individuals booking flights.
- Passenger_ID (Primary Key): Unique identifier for each passenger.
- First_Name: First name of the passenger.
- Middle_name Middle name of the passenger.
- Last_Name: Last name of the passenger.
- Email: Email address of the passenger.
- Passport_Number: Passport number of the passenger.
- Phone_no: Phone number of the passenger.

## Airline_mgt: Represents airlines operating flights.
- Airline_ID (Primary Key): Unique identifier for each airline.
- Flight_ID (Foreign Key): Unique identifier for each flight.
- Airline_Name: Name of the airline.
- Contact_Number: Contact number of the airline.
- Operating_Region: Region(s) where the airline operates.

## Airport_mgt: Represents airports serving as departure or arrival points for flights.
Airport_Code (Primary Key): Three-letter code representing the airport.
Airport_Name: Name of the airport.
Airport_Location: Location (city, country) of the airport.
Airport_Facility: Facilities available at the airport (e.g., parking, lounges)

## Booking_mgt: Represents flight reservations made by passengers.
- Booking_ID (Primary Key): Unique identifier for each booking.
- Airport_code (Foreign Key) Reference to the airport.
- Passenger_info This is meant to briefly describe the passenger and his need.
- Flight_Details This is meant to describe the kind of chosen flight (Economy, Business or 1st Class)
- Flight_ID (Foreign Key): Reference to the flight booked.
- Passenger_ID (Foreign Key): Reference to the passenger making the booking.
- Payment_Status: Status of the payment for the booking (e.g., pending, paid).

## Payment_mgt: Represents payments made for flight bookings.
- PaymentID (Primary Key): Unique identifier for each payment.
- BookingID (Foreign Key): Reference to the booking associated with the payment.
- Payment_Method: Method used for payment (e.g., credit card, PayPal).
- Payment_Amount: Amount paid for the booking.
- Transaction_Period: Date and time of the payment transaction.

## Relationships Between Entities
### Flight_mgt – Booking_mgt Relationship
- Each booking is associated with one flight (FlightID in the Booking table references Flight_ID in the Flight table).
 This is a one-to-many relationship, as one flight can have multiple bookings, but each booking corresponds to only one flight.
### Passenger_mgt – Booking_mgt Relationship
- Each booking is associated with one passenger (Passenger_ID in the Booking table references Passenger_ID in the Passenger table).
- This is a one-to-many relationship, as one passenger can make multiple bookings, but each booking corresponds to only one passenger.
### Flight_mgt – Airport_mgt Relationship
- Each flight has an origin airport and a destination airport (Airport_Origin Code and Airport_Destination Code in the Flight table reference Airport_Code in the Airport table).
- This is a many-to-one relationship, as multiple flights can depart from or arrive at the same airport, but each flight has only one origin and one destination airport.
### Airline_mgt – Flight_mgt Relationship
- Each flight is operated by one airline (Airline_ID in the Flight table references Airline_ID in the Airline table).
- This is a one-to-many relationship, as one airline can operate multiple flights, but each flight is operated by only one airline.
### Payment_mgt – Booking_mgt Relationship
- Each payment is associated with one booking (Booking_ID in the Payment table references Booking_ID in the Booking table).
- This is a one-to-one relationship, as each payment corresponds to only one booking, and each booking can have only one payment.
