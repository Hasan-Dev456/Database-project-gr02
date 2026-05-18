-- Airline Inserts
INSERT INTO Airline VALUES
(1, 'Turkish Airlines', 'Turkey'),
(2, 'Pegasus Airlines', 'Turkey'),
(3, 'Emirates', 'UAE'),
(4, 'Qatar Airways', 'Qatar'),
(5, 'Lufthansa', 'Germany');

-- Plane_Model Inserts
INSERT INTO Plane_Model VALUES
('A320', 'Airbus', 180, 'CFM56', 24210),
('B737', 'Boeing', 189, 'CFM56', 26000),
('B777', 'Boeing', 396, 'GE90', 181000),
('A380', 'Airbus', 555, 'Trent 900', 320000),
('E190', 'Embraer', 114, 'GE CF34', 13000),
('CRJ900', 'Bombardier', 90, 'GE CF34', 10000),
('B787', 'Boeing', 335, 'GEnx', 126000),
('A350', 'Airbus', 350, 'Rolls Royce Trent XWB', 141000);

-- Airplane Inserts
INSERT INTO Airplane VALUES
(101, 'A320', 180, 2018, 12000, 'Active'),
(102, 'B737', 189, 2019, 15000, 'Maintenance'),
(103, 'B777', 396, 2015, 30000, 'Active'),
(104, 'A380', 555, 2017, 22000, 'Parked'),
(105, 'E190', 114, 2020, 8000, 'Active'),
(106, 'CRJ900', 90, 2021, 6000, 'Active'),
(107, 'B787', 335, 2016, 25000, 'Maintenance'),
(108, 'A350', 350, 2022, 4000, 'Active');

-- Hangar Inserts
INSERT INTO Hangar VALUES
(1, 'North Zone', 10),
(2, 'South Zone', 15),
(3, 'East Zone', 8),
(4, 'West Zone', 12),
(5, 'VIP Area', 5);

-- Parking Inserts
INSERT INTO Parking VALUES
(101, 1, '2026-05-01 08:00:00', '2026-05-02 09:00:00'),
(102, 2, '2026-05-03 10:00:00', NULL),
(103, 3, '2026-05-04 11:30:00', '2026-05-05 15:00:00'),
(104, 4, '2026-05-06 07:45:00', NULL),
(105, 1, '2026-05-07 14:20:00', '2026-05-08 08:00:00'),
(106, 5, '2026-05-09 09:15:00', NULL);

-- Union_Info Inserts
INSERT INTO Union_Info VALUES
('U001', 'Airport Workers Union', 'North Office'),
('U002', 'Technical Staff Union', 'South Office'),
('U003', 'Aviation Employees Union', 'East Office'),
('U004', 'Ground Staff Union', 'West Office'),
('U005', 'Maintenance Union', 'Main Office'),
('U006', 'Operations Union', 'Terminal Office'),
('U007', 'Admin Staff Union', 'Admin Building'),
('U008', 'Air Traffic Union', 'Control Tower');

-- Employee Inserts
INSERT INTO Employee VALUES
(1001, 'Ahmed', 'Ali', '0501234567', 'ahmed@airport.com', 5000.00, '2020-01-15', 'U001'),
(1002, 'Sara', 'Mohammed', '0502345678', 'sara@airport.com', 6200.00, '2019-03-20', 'U002'),
(1003, 'John', 'Smith', '0503456789', 'john@airport.com', 7000.00, '2018-07-11', 'U003'),
(1004, 'Fatima', 'Hassan', '0504567890', 'fatima@airport.com', 5500.00, '2021-05-01', 'U004'),
(1005, 'David', 'Brown', '0505678901', 'david@airport.com', 8000.00, '2017-09-09', 'U005'),
(1006, 'Noor', 'Khaled', '0506789012', 'noor@airport.com', 4800.00, '2022-02-12', 'U006'),
(1007, 'Ali', 'Yousef', '0507890123', 'ali@airport.com', 5300.00, '2020-10-18', 'U007'),
(1008, 'Emily', 'Clark', '0508901234', 'emily@airport.com', 6100.00, '2019-12-25', 'U008');

-- Airport_Staff Inserts
INSERT INTO Airport_Staff VALUES
(1001, 'Security'),
(1004, 'Customer Service'),
(1006, 'Operations'),
(1007, 'Administration');

-- Technician Inserts
INSERT INTO Technician VALUES
(1002),
(1003),
(1005),
(1008);

-- Technician_Expertise Inserts
INSERT INTO Technician_Expertise VALUES
(1002, 'A320', '2021-01-15'),
(1002, 'B737', '2022-02-20'),
(1003, 'B777', '2020-06-10'),
(1003, 'A380', '2021-08-18'),
(1005, 'B787', '2019-11-25'),
(1005, 'A350', '2023-03-14'),
(1008, 'E190', '2022-07-07'),
(1008, 'CRJ900', '2023-01-30');

-- Flight Inserts
INSERT INTO Flight VALUES
('FL100', 101, 'Ercan International Airport', 'Dubai International Airport', '2026-05-10 08:00:00', '2026-05-10 12:00:00', 'Scheduled', 3),
('FL101', 102, 'Ercan International Airport', 'Paris Charles de Gaulle Airport', '2026-05-11 09:30:00', '2026-05-11 13:00:00', 'Delayed', 1),
('FL102', 103, 'Ercan International Airport', 'Tokyo Haneda Airport', '2026-05-12 13:00:00', '2026-05-13 03:00:00', 'Active', 4),
('FL103', 104, 'Ercan International Airport', 'Cairo International Airport', '2026-05-14 15:00:00', '2026-05-14 18:00:00', 'Cancelled', 2),
('FL104', 105, 'Ercan International Airport', 'Rome Leonardo da Vinci Airport', '2026-05-15 06:45:00', '2026-05-15 09:15:00', 'Scheduled', 1),
('FL105', 106, 'Ercan International Airport', 'Lisbon Humberto Delgado Airport', '2026-05-16 10:20:00', '2026-05-16 14:40:00', 'Completed', 2);

-- Maintenance_Record Inserts
INSERT INTO Maintenance_Record VALUES
(1, 101, 1002, '2026-04-01', 'Engine Inspection', 2500.00, 'Routine maintenance'),
(2, 102, 1003, '2026-04-05', 'Landing Gear Repair', 5400.00, 'Hydraulic issue fixed'),
(3, 103, 1005, '2026-04-10', 'Fuel System Check', 3200.00, 'No issues found'),
(4, 104, 1003, '2026-04-15', 'Cabin Maintenance', 1800.00, 'Seat replacements'),
(5, 105, 1008, '2026-04-18', 'Software Update', 1200.00, 'Navigation updated'),
(6, 106, 1008, '2026-04-22', 'Brake Replacement', 2700.00, 'Replaced worn brakes');

-- Test Inserts
INSERT INTO Test VALUES
(1, 'Engine Test', 'Checks engine performance', 100, 180),
(2, 'Safety Test', 'Aircraft safety inspection', 100, 365),
(3, 'Fuel Efficiency Test', 'Measures fuel consumption', 100, 90),
(4, 'Electrical Systems Test', 'Checks onboard electrical systems', 100, 120),
(5, 'Hydraulic Test', 'Checks hydraulic systems', 100, 150);

-- Testing_Event Inserts
INSERT INTO Testing_Event VALUES
(101, 1002, 1, '2026-04-01', 5, 95),
(102, 1003, 2, '2026-04-03', 4, 88),
(103, 1005, 3, '2026-04-05', 6, 91),
(104, 1003, 4, '2026-04-07', 3, 85),
(105, 1008, 5, '2026-04-09', 2, 97),
(106, 1008, 1, '2026-04-11', 5, 90);

-- Traffic_Controller Inserts
INSERT INTO Traffic_Controller VALUES
(1001, '2026-01-10'),
(1004, '2026-02-15'),
(1006, '2026-03-20'),
(1007, '2026-04-01');