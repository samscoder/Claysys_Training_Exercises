--CRUD OPERATIONS ON SIGNUP PAGE--
use claysys;

select * from signup;

--CREATE USER--
CREATE PROCEDURE sp_CreateUser
    @full_name NVARCHAR(100),
    @date_of_birth DATE,
    @phone NVARCHAR(15),
    @address NVARCHAR(255),
    @username NVARCHAR(50),
    @email NVARCHAR(100),
    @password_hash NVARCHAR(255)
AS
BEGIN
    INSERT INTO signup(full_name, date_of_birth, phone, address, username, email, password_hash)
    VALUES (@full_name, @date_of_birth, @phone, @address, @username, @email, @password_hash);
END;

--RETRIEVE USER BY user_id--
CREATE PROCEDURE sp_GetUserByID
    @user_id INT
AS
BEGIN
    SELECT user_id, full_name, date_of_birth, phone, address, username, email, password_hash
    FROM signup
    WHERE user_id = @user_id;
END;

--RETRIEVE ALL USER--
CREATE PROCEDURE sp_GetAllUsers
AS
BEGIN
    SELECT user_id, full_name, date_of_birth, phone, address, username, email, password_hash
    FROM signup;
END;

--UPDATE--
CREATE PROCEDURE sp_UpdateUser
    @user_id INT,
    @full_name NVARCHAR(100),
    @date_of_birth DATE,
    @phone NVARCHAR(15),
    @address NVARCHAR(255),
    @username NVARCHAR(50),
    @email NVARCHAR(100),
    @password_hash NVARCHAR(255)
AS
BEGIN
    UPDATE signup
    SET full_name = @full_name,
        date_of_birth = @date_of_birth,
        phone = @phone,
        address = @address,
        username = @username,
        email = @email,
        password_hash = @password_hash
    WHERE user_id = @user_id;
END;

--DELETE--
CREATE PROCEDURE sp_DeleteUser
    @user_id INT
AS
BEGIN
    DELETE FROM signup
    WHERE user_id = @user_id;
END;

--EXECUTE CREATE USER Procedure--

EXEC sp_CreateUser 
    @full_name = 'John Samuel',
    @date_of_birth = '1980-01-01',
    @phone = '567-890-1234',
    @address = '123 Main St, California, USA',
    @username = 'johnsamuel',
    @email = 'johnsamuel@example.com',
    @password_hash = 'hashedpassword123';

select * from signup;

--Retrieve User by User id Procedure--
EXEC sp_GetUserByID 
    @user_id = 1;

--Retrieve All User Stored Procedure--
EXEC sp_GetAllUsers; 

--Update User stored Procedure--
EXEC sp_UpdateUser
    @user_id = 31, 
    @full_name = 'John Smith II',
    @date_of_birth = '1985-05-15',
    @phone = '598-765-4321',
    @address = '456 Another St, New City, USA',
    @username = 'johnsmith2',
    @email = 'johnsmith2@example.com',
    @password_hash = 'newhashedpassword456';

select * from signup;

--Delete Procedure--
EXEC sp_DeleteUser 
    @user_id = 31; 

select * from signup;
