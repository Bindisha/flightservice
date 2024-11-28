INSERT INTO flight (ID, FLIGHT_NUMBER, OPERATING_AIRLINES, DEPARTURE_CITY, ARRIVAL_CITY, DATE_OF_DEPARTURE, ESTIMATED_DEPARTURE_TIME)
SELECT 1, 'AA1', 'American Airlines', 'AUS', 'NYC', STR_TO_DATE('02-05-2025', '%m-%d-%Y'), '2025-02-05 03:14:07'
WHERE NOT EXISTS (
    SELECT 1 FROM flight WHERE ID = 1
);

INSERT INTO flight (ID, FLIGHT_NUMBER, OPERATING_AIRLINES, DEPARTURE_CITY, ARRIVAL_CITY, DATE_OF_DEPARTURE, ESTIMATED_DEPARTURE_TIME)
SELECT 2, 'AA2', 'American Airlines', 'AUS', 'NYC', STR_TO_DATE('02-05-2025', '%m-%d-%Y'), '2025-02-05 05:14:07'
WHERE NOT EXISTS (
    SELECT 1 FROM flight WHERE ID = 2
);

INSERT INTO flight (ID, FLIGHT_NUMBER, OPERATING_AIRLINES, DEPARTURE_CITY, ARRIVAL_CITY, DATE_OF_DEPARTURE, ESTIMATED_DEPARTURE_TIME)
SELECT 3, 'AA3', 'American Airlines', 'AUS', 'NYC', STR_TO_DATE('02-05-2025', '%m-%d-%Y'), '2025-02-05 06:14:07'
WHERE NOT EXISTS (
    SELECT 1 FROM flight WHERE ID = 3
);

INSERT INTO flight (ID, FLIGHT_NUMBER, OPERATING_AIRLINES, DEPARTURE_CITY, ARRIVAL_CITY, DATE_OF_DEPARTURE, ESTIMATED_DEPARTURE_TIME)
SELECT 4, 'SW1', 'South West', 'AUS', 'NYC', STR_TO_DATE('02-05-2025', '%m-%d-%Y'), '2025-02-05 07:14:07'
WHERE NOT EXISTS (
    SELECT 1 FROM flight WHERE ID = 4
);

INSERT INTO flight (ID, FLIGHT_NUMBER, OPERATING_AIRLINES, DEPARTURE_CITY, ARRIVAL_CITY, DATE_OF_DEPARTURE, ESTIMATED_DEPARTURE_TIME)
SELECT 5, 'UA1', 'United Airlines', 'NYC', 'DAL', STR_TO_DATE('02-05-2025', '%m-%d-%Y'), '2025-02-05 10:14:07'
WHERE NOT EXISTS (
    SELECT 1 FROM flight WHERE ID = 5
);

INSERT INTO flight (ID, FLIGHT_NUMBER, OPERATING_AIRLINES, DEPARTURE_CITY, ARRIVAL_CITY, DATE_OF_DEPARTURE, ESTIMATED_DEPARTURE_TIME)
SELECT 6, 'UA1', 'United Airlines', 'NYC', 'DAL', STR_TO_DATE('02-05-2025', '%m-%d-%Y'), '2025-02-05 10:14:07'
WHERE NOT EXISTS (
    SELECT 1 FROM flight WHERE ID = 6
);

INSERT INTO flight (ID, FLIGHT_NUMBER, OPERATING_AIRLINES, DEPARTURE_CITY, ARRIVAL_CITY, DATE_OF_DEPARTURE, ESTIMATED_DEPARTURE_TIME)
SELECT 7, 'SW1', 'South West', 'AUS', 'NYC', STR_TO_DATE('02-06-2025', '%m-%d-%Y'), '2025-02-06 07:14:07'
WHERE NOT EXISTS (
    SELECT 1 FROM flight WHERE ID = 7
);

INSERT INTO flight (ID, FLIGHT_NUMBER, OPERATING_AIRLINES, DEPARTURE_CITY, ARRIVAL_CITY, DATE_OF_DEPARTURE, ESTIMATED_DEPARTURE_TIME)
SELECT 8, 'SW2', 'South West', 'AUS', 'NYC', STR_TO_DATE('02-06-2025', '%m-%d-%Y'), '2025-02-06 08:14:07'
WHERE NOT EXISTS (
    SELECT 1 FROM flight WHERE ID = 8
);

INSERT INTO flight (ID, FLIGHT_NUMBER, OPERATING_AIRLINES, DEPARTURE_CITY, ARRIVAL_CITY, DATE_OF_DEPARTURE, ESTIMATED_DEPARTURE_TIME)
SELECT 9, 'SW3', 'South West', 'NYC', 'DAL', STR_TO_DATE('02-06-2025', '%m-%d-%Y'), '2025-02-06 10:14:07'
WHERE NOT EXISTS (
    SELECT 1 FROM flight WHERE ID = 9
);

INSERT INTO flight (ID, FLIGHT_NUMBER, OPERATING_AIRLINES, DEPARTURE_CITY, ARRIVAL_CITY, DATE_OF_DEPARTURE, ESTIMATED_DEPARTURE_TIME)
SELECT 10, 'UA1', 'United Airlines', 'NYC', 'DAL', STR_TO_DATE('02-06-2025', '%m-%d-%Y'), '2025-02-06 10:14:07'
WHERE NOT EXISTS (
    SELECT 1 FROM flight WHERE ID = 10
);
