CREATE DATABASE sporteventmanager;

GO

USE sporteventmanager;

CREATE TABLE clients (
client_id INT PRIMARY KEY,
client_name VARCHAR(255),
email VARCHAR(255),
phone INT);

GO

USE sporteventmanager;

CREATE TABLE events (
event_id INT PRIMARY KEY,
event_name VARCHAR(255),
event_date DATE,
client_id INT,
venue_id INT,
FOREIGN KEY (client_id) REFERENCES clients(client_id),
FOREIGN KEY (venue_id) REFERENCES venues(venue_id));

GO

USE sporteventmanager;

CREATE TABLE venues(
venue_id INT PRIMARY KEY,
venue_name VARCHAR(255),
venue_location VARCHAR(255),
capacity INT);

GO

USE sporteventmanager;

CREATE TABLE participants(
participant_id INT PRIMARY KEY,
participant_name VARCHAR(255),
participant_age INT,
sport VARCHAR(255));

GO

USE sporteventmanager;

CREATE TABLE staff(
staff_id INT PRIMARY KEY,
staff_name VARCHAR(255),
staff_role VARCHAR(255));

GO

USE sporteventmanager;

CREATE TABLE event_staff (
event_staff_id INT PRIMARY KEY,
event_id INT,
staff_id INT,
FOREIGN KEY (event_id) REFERENCES events (event_id),
FOREIGN KEY (staff_id) REFERENCES staff (staff_id));

GO

USE sporteventmanager;

CREATE TABLE registrations (
registration_id INT PRIMARY KEY,
event_id INT,
participant_id INT,
registration_date DATE,
FOREIGN KEY (event_id) REFERENCES events (event_id),
FOREIGN KEY (participant_id) REFERENCES participants (participant_id));





