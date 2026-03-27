--1. View Events with Clients and Venues

--SELECT * FROM [sporteventmanager].[dbo].[venues]
--SELECT * FROM [sporteventmanager].[dbo].[events]
--SELECT * FROM [sporteventmanager].[dbo].[clients]

SELECT A.[event_id], A.[event_name], A.[event_date], A.[client_id] , A.[venue_id], B.[client_name], B.[email], B.[phone], C.[venue_name], C.[venue_location], C.[capacity]
FROM [sporteventmanager].[dbo].[events] A
JOIN [sporteventmanager].[dbo].[clients] B
ON A.[client_id] = B.[client_id]
JOIN [sporteventmanager].[dbo].[venues] C
ON A.[venue_id] = C.[venue_id]

--2. View Participants Registered for Events

--SELECT * FROM [sporteventmanager].[dbo].[registrations]
--SELECT * FROM [sporteventmanager].[dbo].[participants]
--SELECT * FROM [sporteventmanager].[dbo].[events]

SELECT A.[participant_name], B.[registration_id], C.[event_date], C.[event_name]
FROM [sporteventmanager].[dbo].[participants] A
JOIN [sporteventmanager].[dbo].[registrations] B
ON A.[participant_id] = B.[participant_id]
JOIN [sporteventmanager].[dbo].[events] C
ON B.[event_id] = C.[event_id]
ORDER BY A.[participant_name], B.[registration_id],  C.[event_date], C.[event_name]

--3. VIEW Staff Assigned to Events
--SELECT * FROM [sporteventmanager].[dbo].[events]
--SELECT * FROM [sporteventmanager].[dbo].[event_staff]
--SELECT * FROM [sporteventmanager].[dbo].[staff]

SELECT A.[staff_name], A.[staff_role], C.[event_name], C.[event_date]
FROM [sporteventmanager].[dbo].[staff] A
JOIN [sporteventmanager].[dbo].[event_staff] B
ON A.[staff_id] = B.[staff_id]
JOIN [sporteventmanager].[dbo].[events] C
ON B.[event_id] = C.[event_id]
ORDER BY A.[staff_name], A.[staff_role], C.[event_name], C.[event_date]



--4. VIEW Full Event Overview (Advanced JOIN)

SELECT A.[event_id], A.[event_name], A.[event_date], B.[client_name], G.[participant_name], C.[venue_name], C.[venue_location], E.[staff_name], E.[staff_role]
FROM [sporteventmanager].[dbo].[events] A
JOIN [sporteventmanager].[dbo].[clients] B
ON A.[client_id] = B.[client_id]
JOIN [sporteventmanager].[dbo].[venues] C
ON A.[venue_id] = C.[venue_id]
JOIN [sporteventmanager].[dbo].[event_staff] D
ON A.[event_id] = D.[event_id]
LEFT JOIN [sporteventmanager].[dbo].[staff] E
ON D.[staff_id] = E.[staff_id]
LEFT JOIN [sporteventmanager].[dbo].[registrations] F
ON A.[event_id] = F.[event_id]
LEFT JOIN [sporteventmanager].[dbo].[participants] G
ON F.[participant_id] = G.[participant_id]
ORDER BY A.[event_id], A.[event_name], A.[event_date], B.[client_name], G.[participant_name], C.[venue_name], C.[venue_location], E.[staff_name], E.[staff_role]


--SELECT A.[event_id], A.[event_name], A.[event_date], B.[client_name], G.[participant_name], C.[venue_name], C.[venue_location], E.[staff_name], E.[staff_role]
--FROM [sporteventmanager].[dbo].[events] A
--JOIN [sporteventmanager].[dbo].[clients] B
--ON A.[client_id] = B.[client_id]
--JOIN [sporteventmanager].[dbo].[venues] C
--ON A.[venue_id] = C.[venue_id]
--JOIN [sporteventmanager].[dbo].[event_staff] D
--ON A.[event_id] = D.[event_id]
--JOIN [sporteventmanager].[dbo].[staff] E
--ON D.[staff_id] = E.[staff_id]
--JOIN [sporteventmanager].[dbo].[registrations] F
--ON A.[event_id] = F.[event_id]
--JOIN [sporteventmanager].[dbo].[participants] G
--ON F.[participant_id] = G.[participant_id]
--ORDER BY A.[event_id], A.[event_name], A.[event_date], B.[client_name], G.[participant_name], C.[venue_name], C.[venue_location], E.[staff_name], E.[staff_role]