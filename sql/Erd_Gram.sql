Create Database medical_Dev;

create Table Hospital (
    Id INT NOT NULL PRIMARY KEY,
    Hospital_Name VARCHAR(50),
    Phone_Number INT,
    Room_Id INT
    );


Create Table Patient (
    Id INT NOT NULL PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Phone_Number INT,
    Blood_Type VARCHAR(50),
    Weight INT
);


Create Table Employee (
    Id INT NOT NULL PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Phone_Number INT
);



Create Table Room (
    Id INT NOT NULL PRIMARY KEY,
    
    FOREIGN KEY (RoomType_id)
        REFERENCES RoomType(id)
);



Create Table Room Type (
    Id INT NOT NULL PRIMARY KEY,
    Name VARCHAR(50)
);

Create Table Diagnosis (
    Id NOT NULL PRIMARY KEY,
    Treatable VARCHAR(50),
    Name VARCHAR(50),
);


Create Table Role (
    Id NOT NULL PRIMARY KEY,
    Name VARCHAR(50)
);

Create Table Treatment (
    Id INT NOT NULL PRIMARY KEY,
    Name VARCHAR(50)
 );



 Create Table Pharmacy (
     Id INT NOT NULL PRIMARY KEY,
     Name VARCHAR(50),
     Phone_Number INT
 );


 Create Table Medicine (
     Id INT NOT NULL PRIMARY KEY,
     Name VARCHAR(50)
 );


 Create Table Prescription (
     Id INT NOT NULL PRIMARY KEY,
    Name VARCHAR(50)
 );

 
Create Table Patient_Room (
    Id INT NOT NULL PRIMARY KEY,

    FOREIGN KEY (patient_id)
        REFERENCES patient(id),

        FOREIGN KEY (room_id)
        REFERENCES room(id)
);

Create Table Role_Employee (
    Id INT NOT NULL PRIMARY KEY,

    FOREIGN KEY (Role_id)
        REFERENCES Role (id),

        FOREIGN KEY (Employee_id)
        REFERENCES Employee(id)
);

Create Table RoomType_Room (
    Id INT NOT NULL PRIMARY KEY,

    FOREIGN KEY (Room_Type_id)
        REFERENCES Room_Type(id),
        
        FOREIGN KEY (Room_id)
        REFERENCES Room(id)        
);

Create Table Treatment_Diagnosis (
    Id INT NOT NULL PRIMARY KEY,
    
    FOREIGN KEY (Treatment_id)
        REFERENCES Treatment(id),

        FOREIGN KEY (Diagnosis_id)
        REFERENCES Diagnosis(id)
);


 Create Table Prescription_Treatment (
     Id INT NOT NULL PRIMARY KEY,

     FOREIGN KEY (Prescription_id)
        REFERENCES Prescription(id),

        FOREIGN KEY (Treatment_id)
        REFERENCES Treatment(id)
 );

 Create Table Prescription_Pharmacy (
    Id INT NOT NULL PRIMARY KEY,

    FOREIGN KEY (prescription_id)
        REFERENCES Prescription(id),

        FOREIGN KEY (Pharmacy_id)
        REFERENCES Pharmacy(id)
);

Create Table Prescription_Medicine (
    Id INT NOT NULL PRIMARY KEY,

    FOREIGN KEY (Prescription_id)
        REFERENCES Prescription(id),

        FOREIGN KEY (Medicine_id)
        REFERENCES Medicine(id)
);