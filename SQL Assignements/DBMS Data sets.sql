USE new_schema;

CREATE TABLE Employee (
  Emp_no char(5),
  Birth_date datetime,
  First_name varchar(10),
  Last_name varchar(10),
  Gender char(1),
  Hire_date datetime,
  Phone_Num varchar(15),
  E_mail varchar(50),
  Constraint pk_employee Primary key (Emp_no));


INSERT INTO Employee (Emp_no, Birth_date, First_Name, Last_Name, Gender, Hire_Date, Phone_num, E_mail) 
VALUES 
(10000, '2001-09-11', 'David', 'Brown', 'M', '2019-12-14', '2616515426', 'davidbrown2149@example.com'),
(10001, '1983-07-12', 'Laurence', 'Smith', 'F', '2017-11-24', '5914872280', 'laurencesmith6534@example.com'),
(10002, '1986-12-27', 'Lucas', 'Jackson', 'M', '2018-02-03', '1726060078', 'lucasjackson7609@example.com'),
(10003, '2004-12-25', 'James', 'Smith', 'F', '2024-12-07', '7100277860', 'jamessmith5439@example.com'),
(10004, '1986-03-13', 'Mia', 'Anderson', 'F', '2022-11-25', '3459701474', 'miaanderson6844@example.com'),
(10005, '1996-10-12', 'Emily', 'Anderson', 'F', '2023-09-28', '2031890094', 'emilyanderson6562@example.com'),
(10006, '1989-05-28', 'Ben', 'Taylor', 'F', '2014-02-12', '7398786658', 'bentaylor9806@example.com'),
(10007, '1987-10-28', 'Liam', 'Brown', 'M', '2015-11-06', '8664109058', 'liambrown1140@example.com'),
(10008, '1984-03-07', 'Ella', 'Anderson', 'M', '2016-06-06', '1728753807', 'ellaanderson1354@example.com'),
(10009, '1991-02-04', 'Olivia', 'Brown', 'F', '2020-06-03', '8181133235', 'oliviabrown5152@example.com'),
(10010, '2005-06-23', 'James', 'Will', 'M', '2017-10-05', '3156563732', 'jameswill4755@example.com'),
(10011, '1983-11-09', 'Sophia', 'White', 'F', '2020-12-15', '5110150218', 'sophiawhite8683@example.com'),
(10012, '2001-08-02', 'Ben', 'Anderson', 'F', '2022-01-16', '9469121928', 'benanderson9566@example.com'),
(10013, '1983-09-10', 'Mia', 'Will', 'F', '2018-05-27', '6543998533', 'miawill9092@example.com'),
(10014, '1992-09-10', 'James', 'White', 'F', '2019-01-11', '2536209331', 'jameswhite1951@example.com'),
(10015, '2004-11-18', 'Emma', 'Taylor', 'F', '2017-04-25', '4450575103', 'emmataylor8618@example.com'),
(10016, '1997-05-09', 'Laurence', 'Taylor', 'M', '2016-12-03', '5667810072', 'laurencetaylor8012@example.com'),
(10017, '1985-10-16', 'Liam', 'Stokes', 'M', '2014-02-28', '2635083161', 'liamstokes1068@example.com'),
(10018, '1997-07-14', 'Sophia', 'Jackson', 'F', '2017-08-21', '7464334352', 'sophiajackson4722@example.com'),
(10019, '1990-08-09', 'James', 'Will', 'F', '2021-01-18', '9284131364', 'jameswill4054@example.com'),
(10020, '1992-07-27', 'Ben', 'Anderson', 'M', '2014-01-10', '2932237467', 'benanderson1059@example.com'),
(10021, '1998-08-15', 'James', 'Johnson', 'F', '2016-02-21', '8811158182', 'jamesjohnson7034@example.com'),
(10022, '2003-03-24', 'Ben', 'Davis', 'M', '2018-02-04', '2969649891', 'bendavis8526@example.com'),
(10023, '1985-02-09', 'Lucas', 'Davis', 'M', '2022-03-07', '4231166923', 'lucasdavis9740@example.com'),
(10024, '1997-02-05', 'John', 'Brown', 'M', '2020-08-07', '8488363712', 'johnbrown8151@example.com'),
(10025, '2000-12-30', 'Lucas', 'Stokes', 'M', '2022-04-26', '5366962420', 'lucasstokes2973@example.com'),
(10026, '1995-11-23', 'Olivia', 'Johnson', 'F', '2016-03-09', '2059395749', 'oliviajohnson2354@example.com'),
(10027, '1985-12-07', 'William', 'Garcia', 'F', '2018-10-26', '9730067219', 'williamgarcia8906@example.com'),
(10028, '1989-06-03', 'Mia', 'Garcia', 'F', '2015-01-26', '2014387331', 'miagarcia4397@example.com'),
(10029, '1992-07-29', 'Liam', 'Martinez', 'M', '2016-07-18', '8627300639', 'liammartinez3510@example.com'),
(10030, '1997-10-07', 'David', 'Stokes', 'M', '2020-10-24', '9909494427', 'davidstokes8245@example.com');

CREATE TABLE Department (
  Dept_no Char(04),
  Dept_name Varchar(20),
  Constraint pk_Department Primary key(Dept_no));



INSERT INTO Department (Dept_no, Dept_name) 
VALUES 
('0001', 'Finance'),
('0002', 'HR'),
('0003', 'Marketing'),
('0004', 'Operation'),
('0005', 'Customer Service'),
('0006', 'Sales'),
('0007', 'IT');

CREATE TABLE Department_manager(
  Emp_no char(05),
  Dept_no char(04),
  From_date datetime,
  To_date datetime,
  Constraint pk_dept_man Primary key (Emp_no),
  Constraint fk_deptman1 Foreign key (Emp_no) References Employee (Emp_no),
  Constraint fk_deptman2 Foreign key (Dept_no) References Department (Dept_no));

INSERT INTO Department_manager (Emp_no, Dept_no, From_date, To_date) 
VALUES 
('10012', '0001', '2021-03-15', '2026-08-21'),
('10005', '0002', '2022-01-10', '2025-05-19'),
('10018', '0003', '2020-06-07', '2027-09-30'),
('10007', '0004', '2023-04-23', '2025-11-11'),
('10025', '0005', '2020-09-09', '2026-02-14'),
('10016', '0006', '2022-07-01', '2027-04-17'),
('10021', '0007', '2021-12-01', '2026-10-25');

CREATE TABLE Employee_Manager (
							Emp_no char (05),
							Dept_no char (04),
                            Manager_no char (05),
                            Constraint pk_dept_man Primary key (Emp_no, Dept_no, Manager_no),
                            Constraint fk_deptman3 Foreign key (Emp_no) References Employee (Emp_no),
                            Constraint fk_deptman4 Foreign key (Dept_no) References Department (Dept_no),
                            Constraint fk_deptman5 Foreign key (Manager_no) References Employee (Emp_no));
INSERT INTO Employee_Manager (Emp_no, Dept_no, Manager_no) VALUES 
('10003', '0001', '10012'),
('10004', '0001', '10012'),
('10006', '0001', '10012'),
('10008', '0002', '10005'),
('10009', '0002', '10005'),
('10010', '0002', '10005'),
('10011', '0003', '10018'),
('10012', '0003', '10018'),
('10013', '0003', '10018'),
('10014', '0004', '10007'),
('10015', '0004', '10007'),
('10017', '0004', '10007'),
('10019', '0005', '10025'),
('10020', '0005', '10025'),
('10022', '0005', '10025'),
('10023', '0006', '10016'),
('10024', '0006', '10016'),
('10026', '0006', '10016'),
('10027', '0007', '10021'),
('10028', '0007', '10021'),
('10029', '0007', '10021'),
('10030', '0007', '10021');


CREATE TABLE Job (
   Emp_no char (05),
   Title varchar (50),
   From_date datetime,
   To_date datetime,
   Constraint pk_job Primary key (Emp_no),
   Constraint fk_job Foreign key (Emp_no) References Employee (Emp_no));
INSERT INTO Job (Emp_no, Title, From_date, To_date) VALUES 
('10003', 'Accountant', '2020-01-15', '2025-01-15'), -- Finance Manager
('10004', 'Financial Analyst', '2020-02-01', '2025-02-01'), -- Finance Employee
('10005', 'HR Manager', '2020-03-10', '2025-03-10'), -- HR Manager
('10006', 'Recruiter', '2020-04-05', '2025-04-05'), -- HR Employee
('10007', 'Marketing Manager', '2020-05-01', '2025-05-01'), -- Marketing Manager
('10008', 'Social Media Specialist', '2020-06-01', '2025-06-01'), -- Marketing Employee
('10009', 'Operations Manager', '2020-07-01', '2025-07-01'), -- Operation Manager
('10010', 'Quality Assurance', '2020-08-01', '2025-08-01'), -- Operation Employee
('10011', 'Customer Service Manager', '2020-09-01', '2025-09-01'), -- Customer Service Manager
('10012', 'Support Agent', '2020-10-01', '2025-10-01'), -- Customer Service Employee
('10013', 'Sales Manager', '2020-11-01', '2025-11-01'), -- Sales Manager
('10014', 'Sales Associate', '2020-12-01', '2025-12-01'), -- Sales Employee
('10015', 'IT Manager', '2020-01-15', '2025-01-15'), -- IT Manager
('10016', 'Software Developer', '2020-02-01', '2025-02-01'), -- IT Employee
('10017', 'Accountant', '2020-01-15', '2025-01-15'), -- Finance Employee
('10018', 'Financial Analyst', '2020-02-01', '2025-02-01'), -- Finance Employee
('10019', 'HR Manager', '2020-03-10', '2025-03-10'), -- HR Employee
('10020', 'Recruiter', '2020-04-05', '2025-04-05'), -- HR Employee
('10021', 'Marketing Manager', '2020-05-01', '2025-05-01'), -- Marketing Employee
('10022', 'Social Media Specialist', '2020-06-01', '2025-06-01'), -- Marketing Employee
('10023', 'Operations Manager', '2020-07-01', '2025-07-01'), -- Operation Employee
('10024', 'Quality Assurance', '2020-08-01', '2025-08-01'), -- Operation Employee
('10025', 'Customer Service Manager', '2020-09-01', '2025-09-01'), -- Customer Service Employee
('10026', 'Support Agent', '2020-10-01', '2025-10-01'), -- Customer Service Employee
('10027', 'Sales Manager', '2020-11-01', '2025-11-01'), -- Sales Employee
('10028', 'Sales Associate', '2020-12-01', '2025-12-01'), -- Sales Employee
('10029', 'IT Manager', '2020-01-15', '2025-01-15'), -- IT Employee
('10030', 'Software Developer', '2020-02-01', '2025-02-01'); -- IT Employee
CREATE TABLE Payroll (
   Emp_ID char (05),
   Payroll_ID char(03),
   By_period varchar(20),
   Salary int,
   Constraint pk_job Primary key (Emp_ID, Payroll_ID),
   Constraint fk_job1 Foreign key (Emp_ID) References Employee (Emp_no));


INSERT INTO Payroll (Emp_ID, Payroll_ID, By_period, Salary) VALUES 
('10003', '001', 'Semi-Annually', 700000),
('10005', '002', 'Semi-Annually', 800000),
('10007', '003', 'Semi-Annually', 900000),
('10025', '004', 'Semi-Annually', 750000),
('10016', '005', 'Semi-Annually', 850000),
('10021', '006', 'Semi-Annually', 600000),
('10018', '007', 'Semi-Annually', 950000),
('10000', '008', 'Monthly', 400000),
('10001', '009', 'Weekly', 350000),
('10002', '010', 'Monthly', 300000),
('10004', '011', 'Weekly', 380000),
('10006', '012', 'Monthly', 410000),
('10008', '013', 'Weekly', 370000),
('10009', '014', 'Monthly', 330000),
('10010', '015', 'Weekly', 360000),
('10011', '016', 'Monthly', 390000),
('10012', '017', 'Weekly', 420000),
('10013', '018', 'Monthly', 340000),
('10014', '019', 'Weekly', 450000),
('10015', '020', 'Monthly', 480000),
('10017', '021', 'Weekly', 460000),
('10019', '022', 'Monthly', 430000),
('10020', '023', 'Weekly', 470000),
('10022', '024', 'Monthly', 490000),
('10023', '025', 'Weekly', 500000),
('10024', '026', 'Monthly', 520000),
('10026', '027', 'Weekly', 510000),
('10027', '028', 'Monthly', 530000),
('10028', '029', 'Weekly', 540000),
('10029', '030', 'Monthly', 550000),
('10030', '031', 'Weekly', 560000);

CREATE TABLE Project (
  Project_ID char (6),
  Dept_name varchar (20),

  Project_name varchar(20),
  Project_Description varchar (25),
  Start_date datetime,
  End_date datetime,
  Constraint pk_project Primary key (Project_ID),
  Constraint fk_project1 Foreign key (Dept_name) References department(Dept_name));



INSERT INTO Project (Project_ID, Dept_name, Project_name, Project_Description, Start_date, End_date) VALUES 
('P0001', 'Finance', 'Budget Planning', 'Annual Budget Review', '2024-01-15', '2024-06-15'),
('P0002', 'Finance', 'Financial Audit', 'Internal Financial Audit', '2024-03-01', '2024-12-01'),
('P0003', 'HR', 'Employee Onboarding', 'New Hire Orientation', '2024-02-15', '2024-04-15'),
('P0004', 'HR', 'Performance Review', 'Annual Employee Reviews', '2024-05-01', '2024-09-01'),
('P0005', 'Marketing', 'Social Media Campaign', 'Q2 Marketing Strategy', '2024-01-10', '2024-03-10'),
('P0006', 'Marketing', 'Product Launch', 'New Product Introduction', '2024-07-01', '2024-11-01'),
('P0007', 'Operation', 'Process Optimization', 'Improving Operational Efficiency', '2024-02-01', '2024-08-01'),
('P0008', 'Operation', 'Supply Chain Management', 'Streamlining Supply Chain', '2024-03-15', '2024-09-15'),
('P0009', 'Sales', 'Market Research', 'Identifying New Opportunities', '2024-01-05', '2024-04-05'),
('P0010', 'IT', 'System Upgrade', 'Upgrading IT Infrastructure', '2024-05-15', '2024-10-15');


