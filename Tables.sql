CREATE TABLE Airplane (
    plane_no INT PRIMARY KEY,
    model_no VARCHAR(50),
    capacity INT
);

CREATE TABLE Hangar (
    hangar_no INT PRIMARY KEY,
    location VARCHAR(100)
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

CREATE TABLE Employee (
    ssn INT PRIMARY KEY,
    union_no VARCHAR(50)
);

CREATE TABLE Technician (
    ssn INT PRIMARY KEY,
    name VARCHAR(100),
    FOREIGN KEY (ssn) REFERENCES Employee(ssn)
);

CREATE TABLE Technician_Expertise (
    ssn INT,
    model_no VARCHAR(50),
    PRIMARY KEY (ssn, model_no),
    FOREIGN KEY (ssn) REFERENCES Technician(ssn)
);

CREATE TABLE Test (
    test_id INT PRIMARY KEY,
    test_name VARCHAR(100)
);

CREATE TABLE Testing_Event (
    plane_no INT,
    ssn INT,
    test_id INT,
    test_date DATE,
    hours_spent INT,
    score INT,
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