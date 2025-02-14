CREATE DATABASE SHARE_MARKET_MANAGEMENT_SYSTEM
USE SHARE_MARKET_MANAGEMENT_SYSTEM

CREATE TABLE Stock (
    Stock_ID INT PRIMARY KEY,
    Stock_Name VARCHAR(100),
    Sector VARCHAR(100),
    Market_Type VARCHAR(50) -- (e.g., 'BSE', 'NSE')
);

INSERT INTO Stock (Stock_ID, Stock_Name, Sector, Market_Type) VALUES
(1, 'Tata Consultancy Services', 'IT', 'NSE'),
(2, 'Reliance Industries', 'Energy', 'BSE'),
(3, 'HDFC Bank', 'Banking', 'NSE'),
(4, 'Infosys', 'IT', 'BSE'),
(5, 'ICICI Bank', 'Banking', 'NSE'),
(6, 'Bharti Airtel', 'Telecom', 'BSE'),
(7, 'Larsen & Toubro', 'Construction', 'NSE'),
(8, 'Wipro', 'IT', 'BSE'),
(9, 'Maruti Suzuki', 'Automobile', 'NSE'),
(10, 'Hindustan Unilever', 'Consumer Goods', 'BSE'),
(11, 'Tata Steel', 'Steel', 'NSE'),
(12, 'HCL Technologies', 'IT', 'BSE'),
(13, 'Mahindra & Mahindra', 'Automobile', 'NSE'),
(14, 'Bajaj Auto', 'Automobile', 'BSE'),
(15, 'State Bank of India', 'Banking', 'NSE');

CREATE TABLE Investor (
    Investor_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Email VARCHAR(100),
    Contact_Number VARCHAR(15),
    City VARCHAR(50),
    Balance DECIMAL(10, 2)
);

INSERT INTO Investor (Investor_ID, Name, Age, Email, Contact_Number, City, Balance) VALUES
(1, 'Ravi Kumar', 35, 'ravi@example.com', '9876543210', 'Delhi', 500000.00),
(2, 'Anjali Sharma', 28, 'anjali@example.com', '9876543211', 'Mumbai', 250000.00),
(3, 'Vikram Patel', 45, 'vikram@example.com', '9876543212', 'Bangalore', 1000000.00),
(4, 'Meera Gupta', 32, 'meera@example.com', '9876543213', 'Kolkata', 300000.00),
(5, 'Ajay Singh', 38, 'ajay@example.com', '9876543214', 'Chennai', 450000.00),
(6, 'Priya Deshmukh', 30, 'priya@example.com', '9876543215', 'Pune', 350000.00),
(7, 'Rohit Sharma', 40, 'rohit@example.com', '9876543216', 'Hyderabad', 600000.00),
(8, 'Deepa Reddy', 25, 'deepa@example.com', '9876543217', 'Bangalore', 200000.00),
(9, 'Suresh Mehta', 50, 'suresh@example.com', '9876543218', 'Delhi', 1200000.00),
(10, 'Neha Verma', 29, 'neha@example.com', '9876543219', 'Mumbai', 650000.00),
(11, 'Kunal Soni', 36, 'kunal@example.com', '9876543220', 'Kolkata', 400000.00),
(12, 'Rina Patel', 27, 'rina@example.com', '9876543221', 'Chennai', 250000.00),
(13, 'Manoj Kumar', 48, 'manoj@example.com', '9876543222', 'Pune', 800000.00),
(14, 'Shweta Joshi', 34, 'shweta@example.com', '9876543223', 'Hyderabad', 500000.00),
(15, 'Nitin Agarwal', 42, 'nitin@example.com', '9876543224', 'Delhi', 700000.00);

CREATE TABLE Transaction (
    Transaction_ID INT PRIMARY KEY,
    Investor_ID INT,
    Stock_ID INT,
    Quantity INT,
    Transaction_Date DATE,
    Price DECIMAL(10, 2),
    FOREIGN KEY (Investor_ID) REFERENCES Investor(Investor_ID),
    FOREIGN KEY (Stock_ID) REFERENCES Stock(Stock_ID)
);

INSERT INTO Transaction (Transaction_ID, Investor_ID, Stock_ID, Quantity, Transaction_Date, Price) VALUES
(1, 1, 3, 50, '2025-01-01', 1500.00),
(2, 2, 5, 30, '2025-01-02', 750.00),
(3, 3, 10, 20, '2025-01-03', 2000.00),
(4, 4, 6, 100, '2025-01-04', 350.00),
(5, 5, 9, 10, '2025-01-05', 6000.00),
(6, 6, 2, 15, '2025-01-06', 2500.00),
(7, 7, 1, 200, '2025-01-07', 2300.00),
(8, 8, 11, 50, '2025-01-08', 500.00),
(9, 9, 4, 30, '2025-01-09', 1000.00),
(10, 10, 8, 100, '2025-01-10', 800.00),
(11, 11, 12, 50, '2025-01-11', 1200.00),
(12, 12, 14, 15, '2025-01-12', 3200.00),
(13, 13, 15, 10, '2025-01-13', 1800.00),
(14, 14, 7, 25, '2025-01-14', 2500.00),
(15, 15, 13, 40, '2025-01-15', 1100.00);

CREATE TABLE Portfolio (
    Portfolio_ID INT PRIMARY KEY,
    Investor_ID INT,
    Stock_ID INT,
    Quantity INT,
    FOREIGN KEY (Investor_ID) REFERENCES Investor(Investor_ID),
    FOREIGN KEY (Stock_ID) REFERENCES Stock(Stock_ID)
);

INSERT INTO Portfolio (Portfolio_ID, Investor_ID, Stock_ID, Quantity) VALUES
(1, 1, 3, 50),
(2, 2, 5, 30),
(3, 3, 10, 20),
(4, 4, 6, 100),
(5, 5, 9, 10),
(6, 6, 2, 15),
(7, 7, 1, 200),
(8, 8, 11, 50),
(9, 9, 4, 30),
(10, 10, 8, 100),
(11, 11, 12, 50),
(12, 12, 14, 15),
(13, 13, 15, 10),
(14, 14, 7, 25),
(15, 15, 13, 40);

CREATE TABLE Stock_Price (
    Stock_ID INT,
    Price_Date DATE,
    Price DECIMAL(10, 2),
    FOREIGN KEY (Stock_ID) REFERENCES Stock(Stock_ID)
);

INSERT INTO Stock_Price (Stock_ID, Price_Date, Price) VALUES
(1, '2025-01-01', 1500.00),
(2, '2025-01-02', 2500.00),
(3, '2025-01-03', 2000.00),
(4, '2025-01-04', 1000.00),
(5, '2025-01-05', 6000.00),
(6, '2025-01-06', 350.00),
(7, '2025-01-07', 2300.00),
(8, '2025-01-08', 500.00),
(9, '2025-01-09', 1200.00),
(10, '2025-01-10', 800.00),
(11, '2025-01-11', 1200.00),
(12, '2025-01-12', 3200.00),
(13, '2025-01-13', 1800.00),
(14, '2025-01-14', 2500.00),
(15, '2025-01-15', 1100.00);

SELECT * FROM INVESTOR
SELECT * FROM PORTFOLIO
SELECT * FROM STOCK
SELECT * FROM STOCK_PRICE
SELECT * FROM TRANSACTION

List all investors who have never made a transaction.
SELECT * FROM Investor WHERE Investor_ID NOT IN (SELECT DISTINCT Investor_ID FROM Transaction);

List the stocks that an investor has bought and sold in the past month.
SELECT DISTINCT Stock_Name
FROM Transaction
JOIN Stock ON Transaction.Stock_ID = Stock.Stock_ID
WHERE Transaction.Investor_ID = 1
AND Transaction.Transaction_Date BETWEEN '2025-01-01' AND '2025-01-31';

Get the total balance of all investors.
SELECT SUM(Balance) FROM Investor;

Find the stock with the highest price.
SELECT Stock_ID, MAX(Price) FROM Stock_Price GROUP BY Stock_ID;

Get the transaction history for a stock and the total value of each transaction.
SELECT Transaction_ID, Investor_ID, Quantity, Price, (Quantity * Price) AS Total_Value
FROM Transaction
WHERE Stock_ID = 2;

Calculate the total number of shares of a stock.
SELECT Stock_ID, SUM(Quantity) FROM Portfolio GROUP BY Stock_ID;

List all stocks that have a price greater than 2000.
SELECT Stock_Name FROM Stock
JOIN Stock_Price ON Stock.Stock_ID = Stock_Price.Stock_ID
WHERE Stock_Price.Price > 2000;

Get the number of investors who own a specific stock.
SELECT COUNT(DISTINCT Investor_ID) FROM Portfolio WHERE Stock_ID = 1;

List all stocks traded in the NSE.
SELECT * FROM Stock WHERE Market_Type = 'NSE';

Add a new stock to the system.
INSERT INTO Stock (Stock_ID, Stock_Name, Sector, Market_Type) VALUES (16, 'Tata Motors', 'Automobile', 'NSE');

Delete a transaction.
DELETE FROM Transaction WHERE Transaction_ID = 3;

Update the balance of an investor after a transaction.
UPDATE Investor SET Balance = Balance - (100 * 1500) WHERE Investor_ID = 1;

Find the total number of shares bought by each investor.
SELECT Investor_ID, SUM(Quantity) FROM Transaction GROUP BY Investor_ID;

Get the average price of a stock in the last week.
SELECT Stock_ID, AVG(Price) FROM Stock_Price WHERE Price_Date BETWEEN '2025-02-01' AND '2025-02-07' GROUP BY Stock_ID;

List the stocks that an investor owns and their current prices.
SELECT Stock.Stock_Name, Portfolio.Quantity, Stock_Price.Price
FROM Portfolio
JOIN Stock ON Portfolio.Stock_ID = Stock.Stock_ID
JOIN Stock_Price ON Stock.Stock_ID = Stock_Price.Stock_ID
WHERE Portfolio.Investor_ID = 1;

Find the investor who has invested the most in a particular stock.
SELECT Investor_ID, SUM(Quantity) AS Total_Quantity
FROM Portfolio
WHERE Stock_ID = 3
GROUP BY Investor_ID
ORDER BY Total_Quantity DESC
LIMIT 1;

Calculate the total value of stocks in an investor’s portfolio.
SELECT Investor_ID, SUM(Portfolio.Quantity * Stock_Price.Price) AS Portfolio_Value
FROM Portfolio
JOIN Stock_Price ON Portfolio.Stock_ID = Stock_Price.Stock_ID
GROUP BY Investor_ID;

List all investors who have a balance greater than 500,000.
SELECT * FROM Investor WHERE Balance > 500000;

List all transactions where an investor bought a particular stock.
SELECT * FROM Transaction WHERE Stock_ID = 3 AND Quantity > 0;

List all investors who own stocks in the 'IT' sector.
SELECT DISTINCT Investor.Name FROM Investor
JOIN Portfolio ON Investor.Investor_ID = Portfolio.Investor_ID
JOIN Stock ON Portfolio.Stock_ID = Stock.Stock_ID
WHERE Stock.Sector = 'IT';

List all stocks with their sector.
SELECT Stock_Name, Sector FROM Stock;

Get the highest price of a stock in the last month.
SELECT Stock_ID, MAX(Price) FROM Stock_Price WHERE Price_Date BETWEEN '2025-01-01' AND '2025-01-31' GROUP BY Stock_ID;

Get the transaction history for a particular stock.
SELECT * FROM Transaction WHERE Stock_ID = 3;

Calculate the total balance of an investor.
SELECT Investor_ID, Balance FROM Investor;

Get the total number of shares owned by an investor.
SELECT Investor_ID, SUM(Quantity) FROM Portfolio GROUP BY Investor_ID;






















