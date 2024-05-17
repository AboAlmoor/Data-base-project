
-- Retrieve all information of employees who work in the Department 'Sales'.
SELECT * FROM Employee WHERE DName = 'Sales';

-- Retrieve the total number of cars sold.
SELECT COUNT(*) AS TotalCarsSold FROM Buy;

-- List all the car models whose basic name is Sedan
select basic_name,model_name from car where basic_name='Sedan';

-- List all the number of car models for each basic name 
SELECT basic_name , COUNT(*) AS NumberOfCarModels 
FROM car
GROUP BY basic_name;

-- List the customers, insurance name and car name for customers who sign the insurance 
SELECT cu.first_name || ' ' || cu.last_name AS Customer_Name, c.basic_name || ' ' || c.model_name AS car_name, i.Insurance_name 
FROM customer cu
NATURAL JOIN insurance i
NATURAL JOIN car c;

-- List all employees along with their supervisors' names.
SELECT e.Employee_ID, e.First_Name, e.Last_Name, s.First_Name AS Supervisor_First, s.Last_Name AS Supervisor_Last
FROM Employee e
LEFT JOIN Employee s ON e.Supervisors = s.Employee_ID;

-- Retrieve the average acceleration of cars.
SELECT AVG(Acceleration) AS AvgAcceleration FROM Car;

-- List all cars and their respective engine types.
SELECT c.Car_ID, c.Basic_name, c.Model_name, e.Engine_Type
FROM Car c
INNER JOIN Engine e ON c.Engine_ID = e.Engine_ID;

-- Retrieve the number of customers in each location.
SELECT Location, COUNT(*) AS CustomerCount
FROM Customer
GROUP BY Location;

-- List the customers, insurance name and car name for customers who sign the insurance 
SELECT cu.first_name || ' ' || cu.last_name AS Customer_Name, c.basic_name || ' ' || c.model_name AS car_name , e.First_name || ' ' || e.Last_name AS Employee_Name
FROM car c
NATURAL JOIN buy b
NATURAL JOIN customer cu
NATURAL JOIN SALES_TRANSACTION t
join EMPLOYEE e on t.EMPLOYEE_ID= e.EMPLOYEE_ID;

-- List the customers, insurance name and car name for customers who sign the insurance  (using nesting)
SELECT 
    (SELECT cu.first_name || ' ' || cu.last_name FROM customer cu WHERE cu.customer_id = b.customer_id) AS Customer_Name,
    (SELECT c.basic_name || ' ' || c.model_name FROM car c WHERE c.car_id = b.car_id) AS car_name,
    (SELECT e.First_name || ' ' || e.Last_name FROM EMPLOYEE e WHERE e.EMPLOYEE_ID = t.EMPLOYEE_ID) AS Employee_Name
FROM buy b
JOIN SALES_TRANSACTION t ON b.transaction_id = t.transaction_id;

--Retrieve the car  and employee name where employee Alice sold
select Basic_Name||' ' ||Model_Name AS CAR_NAME , First_Name || ' ' || Last_name AS Employee_Name 
from car 
natural join buy
natural join SALES_TRANSACTION 
natural join employee where First_Name='Alice';


----Retrieve the car  and employee name where employee Alice sold (using nesting)
SELECT 
    (SELECT c.Basic_Name || ' ' || c.Model_Name 
     FROM car c 
     WHERE c.car_id = b.car_id) AS CAR_NAME,
    (SELECT e.First_Name || ' ' || e.Last_Name 
     FROM employee e 
     WHERE e.employee_id = t.employee_id) AS Employee_Name
FROM buy b
JOIN SALES_TRANSACTION t ON b.transaction_id = t.transaction_id
WHERE t.employee_id = (SELECT employee_id 
                       FROM employee 
                       WHERE First_Name = 'Alice');


-- List each customer name and what car model did he buy
SELECT cu.First_name , cu.Last_name , c.model_name 
FROM (car c JOIN buy b ON c.car_id = b.car_id) 
JOIN customer cu ON b.customer_id = cu.customer_id;

-- List all employees who have letter 'e' in their position.
SELECT EMPLOYEE_ID, FIRST_NAME FROM Employee WHERE First_name LIKE '%e%';

-- List all cars information with a price greater than $60,000.
SELECT * FROM Car WHERE Price > 60000;

-- Retrieve the highest horsepower among all engines.
SELECT MAX(Horsepower) AS MaxHorsepower FROM Engine;

-- List customers whose email addresses end with ".com".
SELECT * FROM Customer WHERE Email LIKE '%.com';

-- Retrieve the names of departments along with the number of employees in each department.
SELECT DName, COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY DName;

-- List all employees and their respective department name and department descriptions.
SELECT e.Employee_ID, e.First_Name, e.Last_Name,e.DName AS Department_Name, d.Description AS Department_Description
FROM Employee e
JOIN Department d ON e.Dname = d.Department_name;

-- Retrieve the number of cars for each color.
SELECT Color, COUNT(*) AS CarCount
FROM Car
GROUP BY Color;


-- Retrieve the insurance cost for each customer with his name and id.
SELECT i.Customer_id, c.First_name , i.Insurance_cost
FROM Insurance i join customer c on i.Customer_id = c.Customer_id;

-- List all customers who have spent the most on their car purchases Including their customer ID, first name, last name, and the total amount spent across all their purchases
SELECT  c.Customer_id,c.First_name, c.Last_name, SUM(car.Price) AS TotalSpent FROM  Customer c
JOIN  Buy b ON c.Customer_id = b.Customer_ID
JOIN Car car ON b.Car_ID = car.Car_ID 
GROUP BY  c.Customer_id, c.First_name, c.Last_name
ORDER BY TotalSpent DESC;



-- List all cars with their id and name and their corresponding material types used.
SELECT c.Car_ID, c.Basic_name,c.model_name, mu.Smaterial_used
FROM Car c
JOIN Material_Used mu ON c.Car_ID = mu.Car_ID
ORDER BY c.Car_ID;

-- Retrieve the number of cars sold in each year of release.
SELECT Year_of_release, COUNT(*) AS CarCount
FROM Car
GROUP BY Year_of_release;

-- List all cars with the word 'Luxury' in their trim package type.
SELECT * FROM Car WHERE Trim_package_type LIKE '%Luxury%';

-- Retrieve the average price of cars sold.
SELECT AVG(Price) AS Avg_Price FROM Car;

-- List all information of employees where the salary is greater than $70,000.
SELECT * FROM Employee WHERE Salary > 70000;


-- List all cars and their respective safety features.
SELECT c.Car_ID, c.Basic_name, s.Safety
FROM Car c
INNER JOIN Specification s ON c.Car_ID = s.Car_ID;

-- Retrieve the count of different fuel types available for cars.
SELECT Fuel_type, COUNT(*) AS FuelTypeCount
FROM Car
GROUP BY Fuel_type;

-- List all customers with phone numbers starting with '059'.
SELECT * FROM Customer_Phone_Number WHERE CPhone_Number LIKE '59%';

-- Retrieve the number cars for each amount of seats
SELECT Number_of_passerngers , count(*) As Number_of_cars 
FROM Car
group by Number_of_passerngers;

-- List all cars ID and Name and their respective interior dimensions.
SELECT c.Car_ID, c.Basic_name,c.model_name, s.Interior_dimensions
FROM Car c
 JOIN Specification s ON c.Car_ID = s.Car_ID;

-- Retrieve the total sales price and number of customers for each payment method used in transactions.
SELECT Payment_method, SUM(Sales_price) AS TotalSalesByMethod , COUNT(*) AS NumberOFCustomers
FROM Sales_Transaction
GROUP BY Payment_method;


-- List all cars and their respective exterior dimensions.
SELECT c.Car_ID, c.Basic_name, s.Exterior_dimensions
FROM Car c
INNER JOIN Specification s ON c.Car_ID = s.Car_ID;

-- Retrieve the number of different engine types available for cars.
SELECT Engine_Type, COUNT(*) AS EngineTypeCount
FROM Engine
GROUP BY Engine_Type;
