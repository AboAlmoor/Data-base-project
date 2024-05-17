CREATE TABLE ENGINE
  (
     Engine_id        VARCHAR(20) PRIMARY KEY,
     Torque           VARCHAR(30) NOT NULL,
     Battery_capacity VARCHAR(30) NOT NULL,
     Engine_type      VARCHAR(30) NOT NULL,
     Horsepower       VARCHAR(30) NOT NULL
  ); 


CREATE TABLE CUSTOMER
  (
     Customer_id NUMBER(10) PRIMARY KEY,
     First_name  VARCHAR(100) NOT NULL,
     Last_name   VARCHAR(100) NOT NULL,
     Location    VARCHAR(500) NOT NULL,
     Email       VARCHAR(500)
  ); 


CREATE TABLE DEPARTMENT
  (
     Department_name VARCHAR(40) PRIMARY KEY,
     Description     VARCHAR(500) NOT NULL,
     Mangerssn       NUMBER(10),
     Mangerstartdate DATE NOT NULL
  ); 


CREATE TABLE EMPLOYEE
  (
     Employee_id NUMBER(10) PRIMARY KEY,
     First_name  VARCHAR(100) NOT NULL,
     Last_name   VARCHAR(100) NOT NULL,
     Position    VARCHAR(50) NOT NULL,
     Address     VARCHAR(500) NOT NULL,
     Salary      NUMBER(10) NOT NULL,
     Gender      VARCHAR(10),
     Dname       VARCHAR(40) REFERENCES DEPARTMENT(Department_name) ON DELETE
     CASCADE,
     Supervisors NUMBER(10),
     FOREIGN KEY (Supervisors) REFERENCES EMPLOYEE(Employee_id) ON DELETE SET
     NULL
  ); 


ALTER TABLE DEPARTMENT
  ADD CONSTRAINT mssn_fk FOREIGN KEY (Mangerssn) REFERENCES EMPLOYEE(Employee_id
  ) ON DELETE CASCADE; 


CREATE TABLE CAR
  (
     Car_id                VARCHAR(10) PRIMARY KEY,
     Basic_name            VARCHAR(200) NOT NULL,
     Model_name            VARCHAR(200) NOT NULL,
     Year_of_release       VARCHAR(10) NOT NULL,
     Acceleration          FLOAT(5) NOT NULL,
     Fuel_type             VARCHAR(100) NOT NULL,
     Color                 VARCHAR(30) NOT NULL,
     Number_of_passerngers NUMBER(5) DEFAULT 5 NOT NULL,
     Trim_package_type     VARCHAR(50) NOT NULL,
     Price                 NUMBER(30) NOT NULL,
     Engine_id             VARCHAR(20) REFERENCES ENGINE(Engine_id) ON DELETE
     CASCADE
  ); 


CREATE TABLE SPECIFICATION
  (
     Car_id              VARCHAR(10) PRIMARY KEY,
     Safety              VARCHAR(500) NOT NULL,
     Technology          VARCHAR(500),
     Exterior_dimensions VARCHAR(500) NOT NULL,
     Interior_dimensions VARCHAR(500) NOT NULL,
     Wheels              VARCHAR(100) NOT NULL,
     Fuel_efficiency     VARCHAR(200) NOT NULL,
     Performance         VARCHAR(200) NOT NULL,
     FOREIGN KEY (Car_id) REFERENCES CAR(Car_id) ON DELETE CASCADE
  ); 


CREATE TABLE MATERIAL_USED
  (
     Smaterial_used VARCHAR(100) NOT NULL,
     Car_id         VARCHAR(10) NOT NULL,
     PRIMARY KEY(Smaterial_used, Car_id),
     FOREIGN KEY (Car_id) REFERENCES SPECIFICATION(Car_id) ON DELETE CASCADE
  ); 


CREATE TABLE CUSTOMER_PHONE_NUMBER
  (
     Customer_id   NUMBER(10),
     Cphone_number NUMBER(10),
     PRIMARY KEY (Customer_id, Cphone_number),
     FOREIGN KEY (Customer_id) REFERENCES CUSTOMER(Customer_id) ON DELETE
     CASCADE
  ); 


CREATE TABLE USER_REVIEW
  (
     Time_stamp     TIMESTAMP DEFAULT Current_timestamp,
     Description    VARCHAR(500),
     Service_rating VARCHAR(20),
     Customer_id    NUMBER(10),
     PRIMARY KEY (Customer_id, Time_stamp),
     FOREIGN KEY (Customer_id) REFERENCES CUSTOMER(Customer_id) ON DELETE
     CASCADE
  ); 


CREATE TABLE SALES_TRANSACTION
  (
     Transaction_id NUMBER(10) PRIMARY KEY,
     Data_of_sale   DATE NOT NULL,
     Payment_method VARCHAR(20) NOT NULL,
     Sales_price    NUMBER(30) NOT NULL,
     Employee_id    NUMBER(10) REFERENCES EMPLOYEE(Employee_id) ON DELETE SET
     NULL
  ); 


CREATE TABLE INSURANCE
  (
     Time_stamp     TIMESTAMP DEFAULT Current_timestamp,
     Insurance_info VARCHAR(500) NOT NULL,
     End_date       DATE NOT NULL,
     Insurance_name VARCHAR(100) NOT NULL,
     Insurance_cost NUMBER(20) NOT NULL,
     Car_id         VARCHAR(10),
     Customer_id    NUMBER(10),
     PRIMARY KEY (Time_stamp, Car_id, Customer_id),
     FOREIGN KEY (Car_id) REFERENCES CAR(Car_id) ON DELETE SET NULL,
     FOREIGN KEY (Customer_id) REFERENCES CUSTOMER(Customer_id) ON DELETE SET
     NULL
  ); 


CREATE TABLE BUY
  (
     Car_id         VARCHAR(10),
     Transaction_id NUMBER(10),
     Customer_id    NUMBER(10),
     PRIMARY KEY (Car_id, Transaction_id, Customer_id),
     FOREIGN KEY (Car_id) REFERENCES CAR(Car_id),
     FOREIGN KEY (Transaction_id) REFERENCES SALES_TRANSACTION(Transaction_id),
     FOREIGN KEY (Customer_id) REFERENCES CUSTOMER(Customer_id)
  ); 
