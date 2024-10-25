use entri_d41;

-- table country
CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(100),
    Population INT,
    Area INT
);

-- table persons
CREATE TABLE Persons (
 Id INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Population INT,
    Rating FLOAT,
    Country_Id INT,
    Country_name VARCHAR(100)
    );
    
    -- insert values to the table country
    INSERT INTO Country (Id, Country_name, Population, Area) VALUES
(1, 'USA', 331000000, 9833517),
(2, 'Canada', 37700000, 9984670),
(3, 'UK', 67000000, 243610),
(4, 'India', 1380004385, 3287263),
(5, 'Australia', 25600000, 7692024),
(6, 'Germany', 83783942, 357022),
(7, 'France', 65273511, 551695),
(8, 'Brazil', 212559417, 8515767),
(9, 'Japan', 126476461, 377975),
(10, 'South Africa', 59308690, 1219090);

select * from country;

-- insert values to persons table
INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'John', 'Doe', 331000000, 4.8, 1, 'USA'),
(2, 'Jane', 'Smith', 331000000, 4.6, 1, 'USA'),
(3, 'Emily', 'Jones', 37700000, 3.9, 2, 'Canada'),
(4, 'Michael', 'Brown', 67000000, 5.0, 3, 'UK'),
(5, 'Sarah', 'Davis', 1380004385, 4.5, 4, 'India'),
(6, 'Chris', 'Wilson', 25600000, 4.2, 5, 'Australia'),
(7, 'David', 'Taylor', 83783942, 4.9, 6, 'Germany'),
(8, 'Sophia', 'Anderson', 65273511, 4.1, 7, 'France'),
(9, 'Emma', 'Thomas', 212559417, 4.0, 8, 'Brazil'),
(10, 'Daniel', 'Martinez', 126476461, 5.0, 9, 'Japan');

select * from persons;

-- List the distinct country names from persons table
SELECT DISTINCT Country_name FROM Persons;

-- Select first names and last names from the Persons table with aliases.
SELECT Fname AS First_Name, Lname AS Last_Name FROM Persons;

-- Find all persons with a rating greater than 4.0.
SELECT * FROM Persons WHERE Rating > 4.0;

-- Find countries with a population greater than 10 lakhs.
SELECT Country_name, Population FROM Country WHERE Population > 1000000;

-- Find persons who are from 'USA' or have a rating greater than 4.5.
SELECT * FROM Persons WHERE Country_name = 'USA' OR Rating > 4.5;

-- Find all persons where the country name is NULL. 
SELECT * FROM persons WHERE Country_name is NULL;

-- Find all persons from the countries 'USA', 'Canada', and 'UK'. 
SELECT * FROM Persons WHERE Country_name IN ('USA', 'Canada','UK');

-- Find all persons not from the countries 'India' and 'Australia'. 
SELECT * FROM Persons WHERE Country_name NOT IN ('India', 'Australia');

-- Find all countries with a population between 5 lakhs and 20 lakhs.
SELECT * FROM Country WHERE Population BETWEEN 500000 AND 2000000;

-- Find all countries whose names do not start with 'C'.
SELECT * FROM Country WHERE Country_name NOT LIKE 'C%';



