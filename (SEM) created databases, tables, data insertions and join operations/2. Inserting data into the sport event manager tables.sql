GO
--1.
USE sporteventmanager;

CREATE TABLE clients (
client_id INT PRIMARY KEY,
client_name VARCHAR(255),
email VARCHAR(255),
phone INT);

INSERT INTO dbo.clients VALUES 
-- (client_id, client_name, email, phone) 
(1, 'ABC Sports Club', 'abc@sports.com', '0712345678'),
(2, 'Elite Athletes', 'elite@mail.com', '0723456789');

GO

--2.

USE sporteventmanager;

CREATE TABLE events (
event_id INT PRIMARY KEY,
event_name VARCHAR(255),
event_date DATE,
client_id INT,
venue_id INT,
FOREIGN KEY (client_id) REFERENCES clients(client_id),
FOREIGN KEY (venue_id) REFERENCES venues(venue_id));

INSERT INTO dbo.events VALUES
--(event_id, event_name, event_date, client_id, venue_id)
(1, 'Football Tournament', '2026-05-10', 1, 1),
(2, 'Athletics Championship', '2026-06-15', 2, 2);

GO

--3.
USE sporteventmanager;

CREATE TABLE venues(
venue_id INT PRIMARY KEY,
venue_name VARCHAR(255),
venue_location VARCHAR(255),
capacity INT);

INSERT INTO dbo.venues VALUES
--(venue_id, venue_name, venue_location, capacity)
(1, 'National Stadium', 'Johannesburg', 50000),
(2, 'City Arena', 'Pretoria', 20000);

GO

--4.

USE sporteventmanager;

CREATE TABLE participants(
participant_id INT PRIMARY KEY,
participant_name VARCHAR(255),
participant_age INT,
sport VARCHAR(255));

INSERT INTO dbo.participants VALUES
--(participant_id, participant_name, participant_age, sport)
(1, 'John Doe', 22, 'Football'),
(2, 'Jane Smith', 19, 'Athletics'),
(3, 'Mike Brown', 25, 'Football');

GO

--5.

USE sporteventmanager;

CREATE TABLE staff(
staff_id INT PRIMARY KEY,
staff_name VARCHAR(255),
staff_role VARCHAR(255));

INSERT INTO dbo.staff VALUES
--(staff_id, staff_name, staff_role)
(1, 'Sarah Mayer', 'Coordinator'),
(2, 'Tom Regan', 'Referee');

GO

--6

USE sporteventmanager;

CREATE TABLE event_staff (
event_staff_id INT PRIMARY KEY,
event_id INT,
staff_id INT,
FOREIGN KEY (event_id) REFERENCES events (event_id),
FOREIGN KEY (staff_id) REFERENCES staff (staff_id));

INSERT INTO dbo.event_staff VALUES
--(event_staff_id, event_id,  staff_id)
(1, 1, 1),
(2, 1, 2),
(3, 2, 1);

GO

--7.
USE sporteventmanager;

CREATE TABLE registrations (
registration_id INT PRIMARY KEY,
event_id INT,
participant_id INT,
registration_date DATE,
FOREIGN KEY (event_id) REFERENCES events (event_id),
FOREIGN KEY (participant_id) REFERENCES participants (participant_id));

INSERT INTO dbo.registrations VALUES
--(registration_id, event_id, participant_id, registration_date)
(1, 1, 1, '2026-04-01'),
(2, 1, 3, '2026-04-02'),
(3, 2, 2, '2026-05-01');


