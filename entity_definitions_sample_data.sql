--  Creating the Database
CREATE DATABASE Luna_DB;
GO


-- Assigning the newly created database
USE Luna_DB;
GO

-- Table for Salespersons
CREATE TABLE SalesPersons (
    SalesPersonID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(100),
    HireDate DATE
);
GO

-- Table for Regions
CREATE TABLE Regions (
    RegionID INT IDENTITY(1,1) PRIMARY KEY,
    RegionName VARCHAR(50)
);
GO



-- Table for Products
CREATE TABLE Products (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2)
);
GO



-- Table for SalesTransactions
CREATE TABLE SalesTransactions (
    TransactionID INT IDENTITY(1,1) PRIMARY KEY,
    SalesPersonID INT,
    RegionID INT,
    ProductID INT,
    TransactionDate DATE,
    Quantity INT,
    TotalSales DECIMAL(10, 2),
    FOREIGN KEY (SalesPersonID) REFERENCES SalesPersons(SalesPersonID),
    FOREIGN KEY (RegionID) REFERENCES Regions(RegionID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
GO



-- Inserting Sample Data to Validate 



-- Insert data into SalesPersons
INSERT INTO SalesPersons (FirstName, LastName, Email, HireDate)
VALUES 
('John', 'Buhari', 'john.buhari@luna.com', '2020-01-15'),
('Jan', 'Wilson', 'jane.wilson@luna.com', '2019-03-22'),
('Olusola', 'Tinubu', 'olusola.tinubu@luna.com', '2021-07-30'),
('Stewie', 'Griffin', 'stewie.griffin@luna.com', '2021-03-14'),
('Taiwo', 'Wike', 'taiwo.wike@luna.com', '2018-11-05');
GO



-- Insert data into Regions
INSERT INTO Regions (RegionName)
VALUES 
('North'),
('East'),
('South'),
('West');
GO



-- Insert data into Products
INSERT INTO Products (ProductName, Price)
VALUES 
('10mL Neutral Amp', 5.00),
('2mL Amber Freeze Dried Amp', 7.00),
('5mL Hypodemic Syringe', 10.50),
('10m Urethra Catheter', 25.50),
('10mL Hormonal Epipen', 58.00);
GO


-- Insert new data into SalesTransactions
INSERT INTO SalesTransactions (SalesPersonID, RegionID, ProductID, TransactionDate, Quantity, TotalSales)
VALUES 
-- Salesperson 1 transactions
(1, 1, 1, '2024-02-01', 150, 750.00),
(1, 3, 3, '2024-02-03', 250, 2625.00),
(1, 4, 4, '2024-02-04', 100, 2550.00),
(1, 3, 5, '2024-02-05', 50, 2900.00),

-- Salesperson 2 transactions
(2, 2, 1, '2024-02-01', 175, 875.00),
(2, 2, 2, '2024-02-02', 220, 1540.00),
(2, 2, 3, '2024-02-03', 275, 2887.50),

-- Salesperson 3 transactions
(3, 3, 1, '2024-02-01', 200, 1000.00),
(3, 3, 2, '2024-02-02', 240, 1680.00),

-- Salesperson 4 transactions
(4, 4, 3, '2024-02-03', 325, 3412.50),
(4, 4, 4, '2024-02-04', 130, 3315.00),
(4, 4, 5, '2024-02-05', 65, 3770.00),

-- Salesperson 5 transactions
(5, 1, 1, '2024-02-01', 250, 1250.00),
(5, 2, 2, '2024-02-02', 280, 1960.00),
(5, 3, 3, '2024-02-03', 350, 3675.00),
(5, 4, 4, '2024-02-04', 140, 3570.00),
(5, 1, 5, '2024-02-05', 70, 4060.00);
GO


-- Verify the data
SELECT * FROM SalesPersons;
SELECT * FROM Regions;
SELECT * FROM Products;
SELECT * FROM SalesTransactions;
GO
