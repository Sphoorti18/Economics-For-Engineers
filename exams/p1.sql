CREATE DATABASE ExamQuestions;

USE ExamQuestions;

-- Create table for Parts
CREATE TABLE Parts (
    PartID INT AUTO_INCREMENT PRIMARY KEY,
    PartName VARCHAR(10) NOT NULL
);

-- Create table for Questions
CREATE TABLE Questions (
    QuestionID INT AUTO_INCREMENT PRIMARY KEY,
    PartID INT,
    QuestionText TEXT NOT NULL,
    Marks INT,
    FOREIGN KEY (PartID) REFERENCES Parts(PartID)
);

-- Create table for Subquestions
CREATE TABLE Subquestions (
    SubquestionID INT AUTO_INCREMENT PRIMARY KEY,
    QuestionID INT,
    SubquestionText TEXT NOT NULL,
    Marks INT,
    FOREIGN KEY (QuestionID) REFERENCES Questions(QuestionID)
);

-- Create table for Commodity Demand Data
CREATE TABLE CommodityDemand (
    DemandID INT AUTO_INCREMENT PRIMARY KEY,
    Commodity VARCHAR(50),
    Month1 VARCHAR(20),
    Price1 DECIMAL(5,2),
    Quantity1 INT,
    Month2 VARCHAR(20),
    Price2 DECIMAL(5,2),
    Quantity2 INT
);

-- Insert data into Parts
INSERT INTO Parts (PartName) VALUES ('Part-A'), ('Part-B'), ('Part-C');

-- Insert data into Questions
INSERT INTO Questions (PartID, QuestionText, Marks) VALUES 
(1, 'Explain the determinants of Demand.', 8),
(1, 'Using appropriate diagrams illustrate and explain the shift and forces behind the demand curve.', 8),
(1, 'Calculate the Cross Elasticity of Demand.', 8),
(1, 'Explain the Meaning and Features of any four types of Market structures of economy.', 5),
(1, 'Illustrate and explain the Law of Diminishing Marginal utility.', 5),
(1, 'Explain any five types of costs.', 5),
(1, 'Mr Ashton Dias working as Executive Engineer in Mittal Steel company due to 5 its reasonable demand has increased his pay scale from Rs. 225 K for 50 months to Rs. 350 K for 90 months from the period of 2022 to 2027. Find the Income Elasticity of Demand.', 5),
(1, 'Explain the meaning with Short-term and Long-term Demand Forecasting.', 5),
(1, 'Analyse the meaning and assumptions of Break-even Point.', 5),
(2, 'State and explain the Quantitative instruments of Monetary Policy.', 6),
(2, 'Describe Output method as a measurement of National Income.', 6),
(2, 'Explain the structure of Indian Banking System.', 6),
(2, 'Analyse the Economic Growth in India on current note.', 6),
(2, 'Explain the measurements of Economic Development.', 6),
(2, 'State and explain the functions of Indian Money Market.', 6),
(2, 'Explain the objectives of Macroeconomics Policies.', 6),
(2, 'Illustrate and explain the effect of increase in Investment.', 6),
(2, 'Explain the participants of Indian Capital Market.', 6),
(3, 'Explain the various types of Inflation.', 6),
(3, 'With the help of a neat diagram, explain the meaning and types of Price Elasticity of Demand.', 6),
(3, 'Calculate TR, AR, TVC, AVC, AFC, AC, and MC from the given table.', 7);

-- Insert data into Subquestions (Sample)
INSERT INTO Subquestions (QuestionID, SubquestionText, Marks) VALUES 
(1, 'Differentiate between Microeconomics and Macroeconomics.', 3),
(1, 'State the law of demand. Explain the law using demand schedule and demand curve.', 3);

-- Insert data into CommodityDemand
INSERT INTO CommodityDemand (Commodity, Month1, Price1, Quantity1, Month2, Price2, Quantity2) VALUES 
('Tea', 'Jan 2024', 50, 70, 'March 2024', 60, 30),
('Coffee', 'Jan 2024', 80, 60, 'March 2024', 90, 20);

-- Further insertions should be done similarly for other questions and parts as needed
