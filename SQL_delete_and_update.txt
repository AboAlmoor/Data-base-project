-- Update Engine (E1234) Horsepower  to 577 hp
UPDATE ENGINE
SET Horsepower = '577 hp'
WHERE Engine_id = 'E1234';

-- Update Car (M1001) Performance Specifications 
UPDATE SPECIFICATION
SET Performance = '0-60 mph in 3.0 seconds'
WHERE Car_ID = 'M1001';

-- Update Employee with ID 1 and Supervisors with ID 5 and Position to Senior Marketing Specialist
UPDATE EMPLOYEE
SET Supervisors = 5, Position = 'Senior Marketing Specialist'
WHERE Employee_ID = 1;

-- Update Employee  with ID 2  to Position Marketing Manager
UPDATE EMPLOYEE
SET Position = 'Marketing Manager'
WHERE Employee_ID = 2;

-- Increase Insurance Cost for Hybrid Cars
UPDATE INSURANCE
SET Insurance_cost = Insurance_cost * 1.1
WHERE Car_ID IN (SELECT Car_ID FROM CAR WHERE Fuel_type = 'Hybrid');

-- Remove Customer Phone Numbers Without Reviews
DELETE FROM CUSTOMER_PHONE_NUMBER
WHERE Customer_id NOT IN (SELECT Customer_ID FROM USER_REVIEW);

-- Remove Customers Without Purchases
DELETE FROM CUSTOMER
WHERE Customer_ID NOT IN (SELECT Customer_ID FROM BUY);

-- Remove Material Used with Leather which  Records for Hybrid Cars
DELETE FROM MATERIAL_USED
WHERE Smaterial_used = 'Leather' AND Car_id IN (SELECT Car_ID FROM CAR WHERE Fuel_type = 'Hybrid');

-- Delete a Specific Purchase Record
DELETE FROM BUY
WHERE Car_ID = 'M1003' AND Transaction_ID = 1 AND Customer_ID = 2;

-- Remove an Employee Record
DELETE FROM Employee
WHERE Employee_ID = 4;

-- Remove a Department Record where Department Name  Marketing
DELETE FROM DEPARTMENT
WHERE Department_name = 'Marketing';

-- Remove a Customer's Phone Number with ID 1 and phone number 591235678
DELETE FROM CUSTOMER_PHONE_NUMBER
WHERE Customer_ID = 1 AND Cphone_number = 591235678;

-- Delete User Reviews Based on Location (New York, NY)
DELETE FROM USER_REVIEW
WHERE Customer_id IN (
    SELECT Customer_id
    FROM CUSTOMER
    WHERE Location = 'New York, NY'
);

-- Terminate an Insurance Record for a Car
DELETE FROM INSURANCE
WHERE Car_ID = 'M1002' AND Customer_id = 2;

-- Update Manager Start Date for a Department
UPDATE DEPARTMENT
SET MangerStartDate = TO_DATE('2022-02-15', 'YYYY-MM-DD')
WHERE Department_Name = 'Sales' AND Mangerssn = 1;

-- Update Car Price
UPDATE CAR
SET Price = 5000
WHERE Car_ID = 'M1001';

-- Adjust Insurance Cost for a Car
UPDATE INSURANCE
SET Insurance_cost = 4000
WHERE Car_ID = 'M1001';

-- Update Department Name for an Employee
UPDATE employee
SET DNAME='Finance'
WHERE EMPLOYEE_ID = 1;

-- Update Customer Location
UPDATE CUSTOMER
SET Location = 'San Francisco, CA'
WHERE Customer_ID = 1;

-- Update Customer's Phone Number
UPDATE CUSTOMER_PHONE_NUMBER
SET CPhone_Number = 0599876543
WHERE Customer_ID = 1;