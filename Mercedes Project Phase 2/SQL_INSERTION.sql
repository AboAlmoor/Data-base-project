INSERT INTO Engine (Engine_ID, Torque, Battery_capacity, Engine_Type, Horsepower)
VALUES ('E1234', '300 Nm', '50 kWh', 'Electric', '200 hp');

INSERT INTO Engine (Engine_ID, Torque, Battery_capacity, Engine_Type, Horsepower)
VALUES ('E5678', '400 Nm', '60 kWh', 'Hybrid', '250 hp');

INSERT INTO Engine (Engine_ID, Torque, Battery_capacity, Engine_Type, Horsepower)
VALUES ('E9012', '350 Nm', '55 kWh', 'Electric', '220 hp');

INSERT INTO Engine (Engine_ID, Torque, Battery_capacity, Engine_Type, Horsepower)
VALUES ('E3456', '320 Nm', '52 kWh', 'Hybrid', '210 hp');

INSERT INTO Engine (Engine_ID, Torque, Battery_capacity, Engine_Type, Horsepower)
VALUES ('E7890', '380 Nm', '58 kWh', 'Electric', '240 hp');


INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Location, Email)
VALUES (1, 'John', 'Smith', 'Los Angeles, CA', 'john.smith@example.com');

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Location, Email)
VALUES (2, 'Emma', 'Johnson', 'New York, NY', 'emma.johnson@example.com');

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Location, Email)
VALUES (3, 'Michael', 'Williams', 'Miami, FL', 'michael.williams@example.com');

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Location, Email)
VALUES (4, 'Sophia', 'Brown', 'Chicago, IL', 'sophia.brown@example.com');

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Location, Email)
VALUES (5, 'Daniel', 'Miller', 'Houston, TX', 'daniel.miller@example.com');


INSERT INTO Department (Department_Name, Description, MangerStartDate)
VALUES ('Sales', 'Responsible for selling Mercedes vehicles.', TO_DATE('2023-01-01', 'YYYY-MM-DD'));


INSERT INTO Employee (Employee_ID, First_Name, Last_Name, Position, Address, Salary, Gender, DName, Supervisors)
VALUES (1, 'Alice', 'Smith', 'Sales Manager', '123 Main St, Los Angeles, CA', 80000, 'Female', 'Sales', NULL);

update DEPARTMENT
set MANGERSSN=1 where DEPARTMENT_NAME='Sales';

INSERT INTO Department (Department_Name, Description,  MangerStartDate)
VALUES ('Marketing', 'Handles marketing campaigns for Mercedes cars.',TO_DATE('2023-02-15', 'YYYY-MM-DD'));

INSERT INTO Employee (Employee_ID, First_Name, Last_Name, Position, Address, Salary, Gender, DName, Supervisors)
VALUES (2, 'Bob', 'Johnson', 'Marketing Specialist', '456 Elm St, New York, NY', 60000, 'Male', 'Marketing', 1);

update DEPARTMENT
set MANGERSSN=2 where DEPARTMENT_NAME='Marketing';


INSERT INTO Department (Department_Name, Description, MangerStartDate)
VALUES ('Finance', 'Manages financial matters related to Mercedes sales.',  TO_DATE('2023-03-30', 'YYYY-MM-DD'));

INSERT INTO Department (Department_Name, Description, MangerStartDate)
VALUES ('Service', 'Responsible for servicing and maintaining Mercedes vehicles.', TO_DATE('2023-04-20', 'YYYY-MM-DD'));

INSERT INTO Department (Department_Name, Description,  MangerStartDate)
VALUES ('Human Resources', 'Manages workforce and HR policies for Mercedes.',  TO_DATE('2023-05-10', 'YYYY-MM-DD'));







INSERT INTO Employee (Employee_ID, First_Name, Last_Name, Position, Address, Salary, Gender, DName, Supervisors)
VALUES (3, 'Charlie', 'Williams', 'Financial Analyst', '789 Oak St, Miami, FL', 70000, 'Male', 'Finance', NULL);

INSERT INTO Employee (Employee_ID, First_Name, Last_Name, Position, Address, Salary, Gender, DName, Supervisors)
VALUES (4, 'Diana', 'Brown', 'Service Technician', '101 Pine St, Chicago, IL', 55000, 'Female', 'Service', NULL);

INSERT INTO Employee (Employee_ID, First_Name, Last_Name, Position, Address, Salary, Gender, DName, Supervisors)
VALUES (5, 'Ethan', 'Miller', 'HR Manager', '202 Cedar St, Houston, TX', 75000, 'Male', 'Human Resources', NULL);



update DEPARTMENT
set MANGERSSN=3 where DEPARTMENT_NAME='Finance';
update DEPARTMENT
set MANGERSSN=4 where DEPARTMENT_NAME='Service';
update DEPARTMENT
set MANGERSSN=5 where DEPARTMENT_NAME='Human Resources';



INSERT INTO Car (Car_ID, Basic_name, Model_name, Year_of_release, Acceleration, Fuel_type, Color, Number_of_passerngers, Trim_package_type, Price, Engine_ID)
VALUES ('M1001', 'SUV', 'G-Class', '2023', 6.2, 'Gasoline', 'Black', 5, 'Premium', 45000, 'E1234');

INSERT INTO Car (Car_ID, Basic_name, Model_name, Year_of_release, Acceleration, Fuel_type, Color, Number_of_passerngers, Trim_package_type, Price, Engine_ID)
VALUES ('M1002', 'Sedan', 'C-Class', '2023', 5.9, 'Gasoline', 'Silver', 5, 'Luxury', 55000, 'E5678');

INSERT INTO Car (Car_ID, Basic_name, Model_name, Year_of_release, Acceleration, Fuel_type, Color, Number_of_passerngers, Trim_package_type, Price, Engine_ID)
VALUES ('M1003', 'Wagon', 'E-Class', '2023', 4.8, 'Hybrid', 'White', 5, 'Premium', 80000, 'E9012');

INSERT INTO Car (Car_ID, Basic_name, Model_name, Year_of_release, Acceleration, Fuel_type, Color, Number_of_passerngers, Trim_package_type, Price, Engine_ID)
VALUES ('M1004', 'Sedan', 'S-class', '2023', 6.5, 'Gasoline', 'Blue', 5, 'Sport', 52000, 'E3456');

INSERT INTO Car (Car_ID, Basic_name, Model_name, Year_of_release, Acceleration, Fuel_type, Color, Number_of_passerngers, Trim_package_type, Price, Engine_ID)
VALUES ('M1005', 'Coupes', 'Mercedes-AMG GT 4-door', '2023', 5.3, 'Hybrid', 'Red', 5, 'Luxury', 70000, 'E7890');


INSERT INTO Specification (Car_ID, Safety, Technology, Exterior_Dimensions, Interior_Dimensions, Wheels, Fuel_Efficiency, Performance)
VALUES ('M1001', 'Advanced safety features included.', 'Infotainment system with voice control.', '185.5 x 71.3 x 56.3 inches', 'Spacious and luxurious interior.', '18-inch alloy wheels', '25 mpg city / 32 mpg highway', '0-60 mph in 6.2 seconds');

INSERT INTO Specification (Car_ID, Safety, Technology, Exterior_Dimensions, Interior_Dimensions, Wheels, Fuel_Efficiency, Performance)
VALUES ('M1002', 'Top-notch safety measures for passengers.', 'Cutting-edge technological additions.', '193.8 x 73.1 x 56.9 inches', 'Comfortable and tech-integrated interior design.', '19-inch carbon fiber wheels', '22 mpg city / 30 mpg highway', '0-60 mph in 5.9 seconds');

INSERT INTO Specification (Car_ID, Safety, Technology, Exterior_Dimensions, Interior_Dimensions, Wheels, Fuel_Efficiency, Performance)
VALUES ('M1003', 'High safety standards embedded.', 'Integrated advanced technology for convenience.', '206.9 x 74.8 x 58.8 inches', 'Luxurious and spacious internal layout.', '20-inch alloy wheels', '30 mpg city / 35 mpg highway', '0-60 mph in 4.8 seconds');

INSERT INTO Specification (Car_ID, Safety, Technology, Exterior_Dimensions, Interior_Dimensions, Wheels, Fuel_Efficiency, Performance)
VALUES ('M1004', 'Ensured safety measures for passengers.', 'Tech-savvy features for user convenience.', '183.3 x 74.4 x 64.5 inches', 'Modern and comfortable interior design.', '19-inch alloy wheels', '28 mpg city / 30 mpg highway', '0-60 mph in 6.5 seconds');

INSERT INTO Specification (Car_ID, Safety, Technology, Exterior_Dimensions, Interior_Dimensions, Wheels, Fuel_Efficiency, Performance)
VALUES ('M1005', 'Advanced safety technology integrated.', 'Sophisticated technological advancements.', '194.3 x 76.7 x 70.7 inches', 'Luxurious and spacious internal design.', '20-inch alloy wheels', '26 mpg city / 34 mpg highway', '0-60 mph in 5.3 seconds');



-- Car M1001 uses Aluminum and Leather
INSERT INTO Material_Used (SMaterial_Used, Car_ID)
VALUES ('Aluminum', 'M1001');

INSERT INTO Material_Used (SMaterial_Used, Car_ID)
VALUES ('Leather', 'M1001');

-- Car M1002 uses Carbon Fiber and Wood
INSERT INTO Material_Used (SMaterial_Used, Car_ID)
VALUES ('Carbon Fiber', 'M1002');

INSERT INTO Material_Used (SMaterial_Used, Car_ID)
VALUES ('Wood', 'M1002');

-- Car M1003 uses Steel and Leather
INSERT INTO Material_Used (SMaterial_Used, Car_ID)
VALUES ('Steel', 'M1003');

INSERT INTO Material_Used (SMaterial_Used, Car_ID)
VALUES ('Leather', 'M1003');

-- Car M1004 uses Leather and Aluminum
INSERT INTO Material_Used (SMaterial_Used, Car_ID)
VALUES ('Leather', 'M1004');

INSERT INTO Material_Used (SMaterial_Used, Car_ID)
VALUES ('Aluminum', 'M1004');

-- Car M1005 uses Wood and Leather
INSERT INTO Material_Used (SMaterial_Used, Car_ID)
VALUES ('Wood', 'M1005');

INSERT INTO Material_Used (SMaterial_Used, Car_ID)
VALUES ('Leather', 'M1005');



INSERT INTO Customer_Phone_Number (Customer_ID, CPhone_Number)
VALUES (1, 0591235678);

INSERT INTO Customer_Phone_Number (Customer_ID, CPhone_Number)
VALUES (2, 0597899154);

INSERT INTO Customer_Phone_Number (Customer_ID, CPhone_Number)
VALUES (3, 0598965321);

INSERT INTO Customer_Phone_Number (Customer_ID, CPhone_Number)
VALUES (4, 0599995551);

INSERT INTO Customer_Phone_Number (Customer_ID, CPhone_Number)
VALUES (5, 0591472586);



INSERT INTO User_Review (Customer_ID, Description, Service_Rating)
VALUES (1, 'Excellent service and top-notch quality!', '5 stars');

INSERT INTO User_Review (Customer_ID, Description, Service_Rating)
VALUES (2, 'Great experience overall, highly recommend!', '4 stars');

INSERT INTO User_Review (Customer_ID, Description, Service_Rating)
VALUES (3, 'Impressed with the professionalism and quality.', '4.5 stars');

INSERT INTO User_Review (Customer_ID, Description, Service_Rating)
VALUES (4, 'Good service and friendly staff.', '3.5 stars');

INSERT INTO User_Review (Customer_ID, Description, Service_Rating)
VALUES (5, 'Satisfied with the purchase and service.', '4 stars');




INSERT INTO Sales_Transaction (Transaction_ID, Data_of_Sale, Payment_method, Sales_price, Employee_ID)
VALUES (1, TO_DATE('2023-01-10', 'YYYY-MM-DD'), 'Credit Card', 50000, 1);

INSERT INTO Sales_Transaction (Transaction_ID, Data_of_Sale, Payment_method, Sales_price, Employee_ID)
VALUES (2, TO_DATE('2023-02-15', 'YYYY-MM-DD'), 'Cash', 60000, 2);

INSERT INTO Sales_Transaction (Transaction_ID, Data_of_Sale, Payment_method, Sales_price, Employee_ID)
VALUES (3, TO_DATE('2023-03-20', 'YYYY-MM-DD'), 'Loan', 80000, 3);

INSERT INTO Sales_Transaction (Transaction_ID, Data_of_Sale, Payment_method, Sales_price, Employee_ID)
VALUES (4, TO_DATE('2023-04-25', 'YYYY-MM-DD'), 'Lease', 52000, 4);

INSERT INTO Sales_Transaction (Transaction_ID, Data_of_Sale, Payment_method, Sales_price, Employee_ID)
VALUES (5, TO_DATE('2023-05-30', 'YYYY-MM-DD'), 'Credit Card', 70000, 5);


INSERT INTO Insurance (Time_stamp, Insurance_Info, End_date, Insurance_name, Insurance_cost, Car_ID, Customer_ID)
VALUES (CURRENT_TIMESTAMP, 'Comprehensive coverage for SUV G-Class.', TO_DATE('2024-01-01', 'YYYY-MM-DD'), 'Full Coverage', 1500, 'M1001', 1);

INSERT INTO Insurance (Time_stamp, Insurance_Info, End_date, Insurance_name, Insurance_cost, Car_ID, Customer_ID)
VALUES (CURRENT_TIMESTAMP, 'Insurance policy for Sedan C-Class.', TO_DATE('2024-02-01', 'YYYY-MM-DD'), 'Premium Coverage', 1800, 'M1002', 2);

INSERT INTO Insurance (Time_stamp, Insurance_Info, End_date, Insurance_name, Insurance_cost, Car_ID, Customer_ID)
VALUES (CURRENT_TIMESTAMP, 'Coverage plan for Wagon E-Class.', TO_DATE('2024-03-01', 'YYYY-MM-DD'), 'Standard Coverage', 2000, 'M1003', 3);

INSERT INTO Insurance (Time_stamp, Insurance_Info, End_date, Insurance_name, Insurance_cost, Car_ID, Customer_ID)
VALUES (CURRENT_TIMESTAMP, 'Insurance policy for Coupes Mercedes-AMG GT 4-door .', TO_DATE('2024-05-01', 'YYYY-MM-DD'), 'Full Coverage', 1900, 'M1005', 5);


INSERT INTO Buy (Car_ID, Transaction_ID, Customer_ID)
VALUES ('M1003', 1, 2);

INSERT INTO Buy (Car_ID, Transaction_ID, Customer_ID)
VALUES ('M1002', 2, 3);

INSERT INTO Buy (Car_ID, Transaction_ID, Customer_ID)
VALUES ('M1001', 3, 1);

INSERT INTO Buy (Car_ID, Transaction_ID, Customer_ID)
VALUES ('M1004', 4, 5);

INSERT INTO Buy (Car_ID, Transaction_ID, Customer_ID)
VALUES ('M1005', 5, 4);




