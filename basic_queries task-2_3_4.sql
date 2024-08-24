create database claysys;
use claysys;

CREATE TABLE signup (
    user_id INT PRIMARY KEY IDENTITY(1,1),
    full_name NVARCHAR(100) NOT NULL,
    date_of_birth DATE,
    phone NVARCHAR(15) NOT NULL,
    address NVARCHAR(255),
    username NVARCHAR(50) UNIQUE NOT NULL,
    email NVARCHAR(100) UNIQUE NOT NULL,
    password_hash NVARCHAR(255) NOT NULL,
);

CREATE TABLE login (
    login_id INT PRIMARY KEY IDENTITY(1,1),
    user_id INT,
    login_success BIT
);

INSERT INTO signup (full_name, date_of_birth, phone, address, username, email, password_hash)
VALUES 
('Alice Smith', '1985-05-10', '555-123-4567', '123 Maple St', 'alice_smith', 'alice@example.com', 'hashed_password_1'),
('Bob Johnson', '1992-07-23', '555-234-5678', '456 Oak St', 'bobj', 'bob@example.com', 'hashed_password_2'),
('Cathy Brown', '1988-12-01', '555-345-6789', '789 Pine St', 'cathyb', 'cathy@example.com', 'hashed_password_3'),
('David Wilson', '1990-02-18', '555-456-7890', '321 Birch St', 'davidw', 'david@example.com', 'hashed_password_4'),
('Emma Davis', '1993-06-05', '555-567-8901', '654 Cedar St', 'emmad', 'emma@example.com', 'hashed_password_5'),
('Frank Miller', '1987-09-13', '555-678-9012', '987 Spruce St', 'frankm', 'frank@example.com', 'hashed_password_6'),
('Grace Lee', '1991-03-24', '555-789-0123', '741 Walnut St', 'gracelee', 'grace@example.com', 'hashed_password_7'),
('Henry Clark', '1984-07-11', '555-890-1234', '852 Chestnut St', 'henryc', 'henry@example.com', 'hashed_password_8'),
('Ivy King', '1994-10-02', '555-901-2345', '963 Sycamore St', 'ivyking', 'ivy@example.com', 'hashed_password_9'),
('Jack White', '1986-12-29', '555-012-3456', '159 Redwood St', 'jackw', 'jack@example.com', 'hashed_password_10'),
('Karen Young', '1995-08-17', '555-234-5678', '753 Hickory St', 'kareny', 'karen@example.com', 'hashed_password_11'),
('Leo Green', '1992-11-30', '555-345-6789', '258 Fir St', 'leogreen', 'leo@example.com', 'hashed_password_12'),
('Mia Scott', '1990-05-20', '555-456-7890', '951 Cedar St', 'miascott', 'mia@example.com', 'hashed_password_13'),
('Nina Adams', '1988-01-14', '555-567-8901', '357 Maple St', 'ninaa', 'nina@example.com', 'hashed_password_14'),
('Oliver Hill', '1993-04-25', '555-678-9012', '753 Oak St', 'oliverh', 'oliver@example.com', 'hashed_password_15'),
('Paula Baker', '1985-09-12', '555-789-0123', '159 Pine St', 'paulab', 'paula@example.com', 'hashed_password_16'),
('Quinn Turner', '1989-02-08', '555-890-1234', '753 Birch St', 'quinnt', 'quinn@example.com', 'hashed_password_17'),
('Ryan Carter', '1994-06-19', '555-901-2345', '258 Spruce St', 'ryanc', 'ryan@example.com', 'hashed_password_18'),
('Sophia Nelson', '1991-11-22', '555-012-3456', '951 Fir St', 'sophian', 'sophia@example.com', 'hashed_password_19'),
('Tom Harris', '1987-08-04', '555-123-4567', '357 Hickory St', 'tomh', 'tom@example.com', 'hashed_password_20'),
('Uma Bell', '1990-03-29', '555-234-5678', '159 Sycamore St', 'umab', 'uma@example.com', 'hashed_password_21'),
('Vera Cooper', '1986-07-15', '555-345-6789', '753 Redwood St', 'verac', 'vera@example.com', 'hashed_password_22'),
('Will Edwards', '1992-12-11', '555-456-7890', '258 Elm St', 'wille', 'will@example.com', 'hashed_password_23'),
('Xena Flores', '1993-09-03', '555-567-8901', '951 Chestnut St', 'xenaf', 'xena@example.com', 'hashed_password_24'),
('Yara Gonzalez', '1988-05-27', '555-678-9012', '357 Hickory St', 'yarag', 'yara@example.com', 'hashed_password_25'),
('Zane Hall', '1995-02-15', '555-789-0123', '159 Cedar St', 'zaneh', 'zane@example.com', 'hashed_password_26'),
('Amy Mitchell', '1984-11-04', '555-890-1234', '753 Maple St', 'amym', 'amy@example.com', 'hashed_password_27'),
('Brian Moore', '1991-07-23', '555-901-2345', '258 Pine St', 'brianm', 'brian@example.com', 'hashed_password_28'),
('Cara Reed', '1987-04-18', '555-012-3456', '951 Oak St', 'carar', 'cara@example.com', 'hashed_password_29'),
('Zara Lee', '1995-08-20', '555-876-5432', '987 Elm St', 'zaralee', 'zara@example.com', 'hashed_password_30');

INSERT INTO login (user_id, login_success)
VALUES
(1, 1),
(2, 0),
(3, 1),
(4, 1),
(5, 0),
(6, 1),
(7, 1),
(8, 0),
(9, 1),
(10, 1),
(11, 0),
(12, 1),
(13, 0),
(14, 1),
(15, 1),
(16, 0),
(17, 1),
(18, 1),
(19, 0),
(20, 1),
(21, 1),
(22, 0),
(23, 1),
(24, 1),
(25, 0),
(26, 1),
(27, 1),
(28, 0),
(29, 1),
(30, 1),
(1, 0),
(2, 1),
(3, 1),
(4, 0),
(5, 1),
(6, 1),
(7, 0),
(8, 1),
(9, 1),
(10, 0),
(11, 1),
(12, 1),
(13, 0),
(14, 1),
(15, 1),
(16, 0),
(17, 1),
(18, 1),
(19, 0),
(20, 1);

select * from login;

select * from signup;

update signup
set phone = '098-765-4321', address = '456 Elm St'
where user_id=5;

select * 
from signup
where user_id=5;

delete 
from signup
where user_id = 5;

select * 
from signup
where user_id=5;


CREATE TABLE employee (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Age INT,
    Salary DECIMAL(10, 2),
    Department NVARCHAR(50)
);

INSERT INTO employee (EmployeeID, FirstName, LastName, Age, Salary, Department) VALUES
(1, 'John', 'Doe', 28, 55000.00, 'HR'),
(2, 'Jane', 'Smith', 34, 60000.00, 'Finance'),
(3, 'Michael', 'Johnson', 45, 70000.00, 'IT'),
(4, 'Emily', 'Davis', 29, 72000.00, 'Marketing'),
(5, 'David', 'Wilson', 40, 65000.00, 'IT'),
(6, 'Sarah', 'Taylor', 31, 67000.00, 'HR'),
(7, 'James', 'Brown', 38, 80000.00, 'Finance'),
(8, 'Jessica', 'Martinez', 26, 54000.00, 'Sales'),
(9, 'Daniel', 'Anderson', 42, 85000.00, 'IT'),
(10, 'Laura', 'Thomas', 30, 56000.00, 'Marketing'),
(11, 'Robert', 'Jackson', 55, 95000.00, 'Finance'),
(12, 'Sophia', 'White', 22, 50000.00, 'HR'),
(13, 'William', 'Harris', 27, 62000.00, 'Sales'),
(14, 'Isabella', 'Martin', 33, 70000.00, 'Marketing'),
(15, 'Anthony', 'Thompson', 47, 89000.00, 'IT'),
(16, 'Mary', 'Garcia', 36, 66000.00, 'Finance'),
(17, 'Joseph', 'Martinez', 29, 77000.00, 'IT'),
(18, 'Mia', 'Robinson', 25, 54000.00, 'Sales'),
(19, 'Charles', 'Clark', 49, 92000.00, 'Finance'),
(20, 'Olivia', 'Rodriguez', 32, 58000.00, 'HR'),
(21, 'Thomas', 'Lewis', 37, 70000.00, 'Marketing'),
(22, 'Emma', 'Lee', 41, 80000.00, 'IT'),
(23, 'David', 'Walker', 35, 62000.00, 'Finance'),
(24, 'Sophia', 'Hall', 28, 67000.00, 'Sales'),
(25, 'Christopher', 'Allen', 44, 88000.00, 'IT'),
(26, 'Ava', 'Young', 23, 52000.00, 'HR'),
(27, 'Matthew', 'King', 39, 78000.00, 'Marketing'),
(28, 'Liam', 'Scott', 46, 87000.00, 'Finance'),
(29, 'Evelyn', 'Green', 30, 59000.00, 'IT'),
(30, 'James', 'Adams', 34, 62000.00, 'Sales'),
(31, 'Harper', 'Baker', 50, 94000.00, 'HR'),
(32, 'Benjamin', 'Nelson', 24, 53000.00, 'Marketing'),
(33, 'Charlotte', 'Carter', 43, 90000.00, 'IT'),
(34, 'Alexander', 'Mitchell', 48, 85000.00, 'Finance'),
(35, 'Amelia', 'Perez', 29, 70000.00, 'Sales'),
(36, 'Ethan', 'Roberts', 36, 67000.00, 'HR'),
(37, 'Mason', 'Turner', 38, 73000.00, 'IT'),
(38, 'Grace', 'Phillips', 27, 56000.00, 'Finance'),
(39, 'Logan', 'Campbell', 31, 64000.00, 'Marketing'),
(40, 'Avery', 'Parker', 33, 61000.00, 'Sales'),
(41, 'Lucas', 'Evans', 51, 96000.00, 'IT'),
(42, 'Luna', 'Edwards', 26, 55000.00, 'HR'),
(43, 'Jackson', 'Collins', 45, 82000.00, 'Finance'),
(44, 'Oliver', 'Stewart', 40, 69000.00, 'Marketing'),
(45, 'Elijah', 'Sanchez', 28, 58000.00, 'Sales'),
(46, 'Chloe', 'Morris', 37, 74000.00, 'IT'),
(47, 'Sebastian', 'Rogers', 35, 63000.00, 'Finance'),
(48, 'Nora', 'Reed', 32, 60000.00, 'HR'),
(49, 'Henry', 'Cook', 46, 81000.00, 'Sales'),
(50, 'Scarlett', 'Morgan', 39, 75000.00, 'Marketing'),
(51, 'Aiden', 'Bell', 29, 68000.00, 'IT'),
(52, 'Jack', 'Murphy', 41, 83000.00, 'Finance'),
(53, 'Ella', 'Bailey', 34, 62000.00, 'HR'),
(54, 'Gabriel', 'Rivera', 30, 59000.00, 'Marketing'),
(55, 'Lily', 'Cooper', 43, 89000.00, 'IT'),
(56, 'Carter', 'Richardson', 50, 91000.00, 'Finance'),
(57, 'Zoe', 'Cox', 27, 53000.00, 'Sales'),
(58, 'Samuel', 'Howard', 38, 76000.00, 'IT'),
(59, 'Ella', 'Ward', 33, 70000.00, 'Finance'),
(60, 'David', 'Torres', 31, 65000.00, 'Marketing'),
(61, 'Sophia', 'Peterson', 25, 51000.00, 'Sales'),
(62, 'Lucas', 'Gray', 44, 80000.00, 'IT'),
(63, 'Mila', 'Ramirez', 39, 76000.00, 'Finance'),
(64, 'Alexander', 'James', 47, 87000.00, 'HR'),
(65, 'Aria', 'Watson', 34, 62000.00, 'Sales'),
(66, 'Jackson', 'Brooks', 28, 69000.00, 'IT'),
(67, 'Ella', 'Kelly', 29, 70000.00, 'Marketing'),
(68, 'Daniel', 'Sanders', 41, 82000.00, 'Finance'),
(69, 'Avery', 'Price', 30, 60000.00, 'Sales'),
(70, 'Henry', 'Bennett', 35, 68000.00, 'IT'),
(71, 'Oliver', 'Wood', 50, 94000.00, 'HR'),
(72, 'Layla', 'Barnes', 26, 56000.00, 'Finance'),
(73, 'Grayson', 'Ross', 45, 85000.00, 'IT'),
(74, 'Isabella', 'Henderson', 32, 61000.00, 'Sales'),
(75, 'Isaac', 'Coleman', 37, 75000.00, 'Marketing'),
(76, 'Sophia', 'Jenkins', 42, 80000.00, 'IT'),
(77, 'Michael', 'Perry', 38, 79000.00, 'Finance'),
(78, 'Victoria', 'Powell', 31, 64000.00, 'HR'),
(79, 'Thomas', 'Long', 33, 62000.00, 'Sales'),
(80, 'Amelia', 'Patterson', 48, 90000.00, 'Marketing'),
(81, 'Benjamin', 'Hughes', 29, 69000.00, 'IT'),
(82, 'Chloe', 'Flores', 30, 58000.00, 'Finance'),
(83, 'Sebastian', 'Washington', 36, 77000.00, 'Sales'),
(84, 'Charlotte', 'Butler', 35, 73000.00, 'HR'),
(85, 'Liam', 'Simmons', 40, 79000.00, 'Finance'),
(86, 'Evelyn', 'Foster', 43, 86000.00, 'Marketing'),
(87, 'Nathan', 'Gonzalez', 25, 51000.00, 'IT'),
(88, 'Emily', 'Bryant', 39, 70000.00, 'Sales'),
(89, 'Mason', 'Alexander', 37, 72000.00, 'HR'),
(90, 'Logan', 'Russell', 49, 93000.00, 'Finance'),
(91, 'Grace', 'Griffin', 28, 59000.00, 'Marketing'),
(92, 'William', 'Diaz', 34, 68000.00, 'IT'),
(93, 'Victoria', 'Hayes', 32, 61000.00, 'Sales'),
(94, 'Harper', 'Myers', 41, 81000.00, 'Finance'),
(95, 'Aiden', 'Ford', 33, 62000.00, 'Marketing'),
(96, 'Lucas', 'Hamilton', 46, 87000.00, 'IT'),
(97, 'Ella', 'Graham', 24, 52000.00, 'Sales'),
(98, 'Ethan', 'Sullivan', 31, 65000.00, 'Finance'),
(99, 'Sofia', 'Wallace', 30, 58000.00, 'HR'),
(100, 'Samuel', 'Moore', 32, 58000.00, 'Sales');

SELECT FirstName, LastName, Salary AS SecondHighestSalary
FROM employee
WHERE Salary = (
    SELECT MAX(Salary)
    FROM employee
    WHERE Salary < (SELECT MAX(Salary) FROM employee)
);

SELECT Department, COUNT(*) AS NumberOfEmployees
FROM employee
GROUP BY Department;

