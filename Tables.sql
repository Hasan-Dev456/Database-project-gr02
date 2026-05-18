CREATE TABLE Airline (
    airline_id INT PRIMARY KEY,
    airline_name VARCHAR(100),
    country VARCHAR(50)
);
CREATE TABLE Plane_Model (
    model_no VARCHAR(50) PRIMARY KEY,
    manufacturer VARCHAR(100),
    max_capacity INT,
    engine_type VARCHAR(50),
    fuel_capacity INT
);
CREATE TABLE Airplane (
    plane_no INT PRIMARY KEY,
    model_no VARCHAR(50),
    capacity INT,
    manufacture_year YEAR,
    total_flight_hours INT DEFAULT 0,
    status VARCHAR(30),

    FOREIGN KEY (model_no)
    REFERENCES Plane_Model(model_no)
);

CREATE TABLE Hangar (
    hangar_no INT PRIMARY KEY,
    location VARCHAR(100),
    capacity INT CHECK (capacity > 0)
);

CREATE TABLE Parking (
    plane_no INT,
    hangar_no INT,
    in_time DATETIME,
    out_time DATETIME,
    PRIMARY KEY (plane_no, in_time),
    FOREIGN KEY (plane_no) REFERENCES Airplane(plane_no),
    FOREIGN KEY (hangar_no) REFERENCES Hangar(hangar_no)
);
CREATE TABLE Union_Info (
    union_no VARCHAR(50) PRIMARY KEY,
    union_name VARCHAR(100),
    office_location VARCHAR(100)
);
CREATE TABLE Employee (
    ssn INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(20),
    email VARCHAR(100) UNIQUE,
    salary DECIMAL(10,2),
    hire_date DATE,
    union_no VARCHAR(50),
    FOREIGN KEY (union_no)
    REFERENCES Union_Info(union_no)
);

CREATE TABLE Airport_Staff (
    ssn INT PRIMARY KEY,
    department VARCHAR(50),

    FOREIGN KEY (ssn)
    REFERENCES Employee(ssn)
);

CREATE TABLE Technician (
    ssn INT PRIMARY KEY,
    FOREIGN KEY (ssn) REFERENCES Employee(ssn)
);

CREATE TABLE Technician_Expertise (
    ssn INT,
    model_no VARCHAR(50),
    certification_date DATE,

    PRIMARY KEY (ssn, model_no),

    FOREIGN KEY (ssn)
    REFERENCES Technician(ssn),

    FOREIGN KEY (model_no)
    REFERENCES Plane_Model(model_no)
);

CREATE TABLE Flight (
    flight_no VARCHAR(20) PRIMARY KEY,
    plane_no INT,
    departure_airport VARCHAR(100),
    arrival_airport VARCHAR(100),
    departure_time DATETIME,
    arrival_time DATETIME,
    status VARCHAR(30),
    airline_id INT,

    FOREIGN KEY (airline_id)
    REFERENCES Airline(airline_id)
    FOREIGN KEY (plane_no)
    REFERENCES Airplane(plane_no)
);

CREATE TABLE Maintenance_Record (
    maintenance_id INT PRIMARY KEY,
    plane_no INT,
    technician_ssn INT,
    maintenance_date DATE,
    maintenance_type VARCHAR(100),
    cost DECIMAL(10,2),
    notes TEXT,

    FOREIGN KEY (plane_no)
    REFERENCES Airplane(plane_no),

    FOREIGN KEY (technician_ssn)
    REFERENCES Technician(ssn)
);

CREATE TABLE Test (
    test_id INT PRIMARY KEY,
    test_name VARCHAR(100),
    description TEXT,
    max_score INT DEFAULT 100,
    required_interval_days INT
);

CREATE TABLE Testing_Event (
    plane_no INT,
    ssn INT,
    test_id INT,
    test_date DATE,
    hours_spent INT,
    score INT CHECK (score BETWEEN 0 AND 100),
    PRIMARY KEY (plane_no, ssn, test_id, test_date),
    FOREIGN KEY (plane_no) REFERENCES Airplane(plane_no),
    FOREIGN KEY (ssn) REFERENCES Technician(ssn),
    FOREIGN KEY (test_id) REFERENCES Test(test_id)
);

CREATE TABLE Traffic_Controller (
    ssn INT PRIMARY KEY,
    last_medical_exam DATE,
    FOREIGN KEY (ssn) REFERENCES Employee(ssn)
);
