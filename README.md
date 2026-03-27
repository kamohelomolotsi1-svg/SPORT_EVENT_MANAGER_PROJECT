# SPORT_EVENT_MANAGER_PROJECT
🏟️ Sports Event Manager Database Project

This project focuses on designing and implementing a relational database for a sports event management company. The goal was to create a structured system to store, manage, and analyse event-related data efficiently.

📌 Data Modelling

I began by designing a data model that represents the key entities involved in the system. These include:

Clients
Events
Venues
Participants
Registrations
Staff
Event Staff (junction table)

Relationships were established between these entities to ensure data integrity and support real-world scenarios such as event registrations and staff assignments.

🗄️ Database Implementation

After designing the model, I created the corresponding tables in SQL Server. Each table was structured with appropriate primary keys and foreign keys to enforce relationships between entities.

📥 Data Insertion

Sample data was inserted into each table to simulate real-world operations. This included:

Clients organizing events
Events hosted at different venues
Participants registering for events
Staff assigned to manage events
📊 Data Analysis

To analyse the data and generate meaningful insights, I used SQL queries with various JOIN operations:

INNER JOIN to retrieve matching records across tables
LEFT JOIN to include all records from primary tables even when related data is missing

These queries allowed me to:

View events along with their clients and venues
Track participant registrations for each event
Identify staff assigned to specific events
Generate a full event overview combining all related data
🚀 Outcome

This project demonstrates a complete database workflow:

Data modelling
Table creation
Data population
Data querying and analysis
