use claysys;

CREATE TABLE StudentAdmission (
    AdmissionID VARCHAR(50) PRIMARY KEY,
    StudentName NVARCHAR(100) NOT NULL,
    DateOfBirth DATE NOT NULL,
    Address NVARCHAR(200) NOT NULL,
    Course NVARCHAR(50) NOT NULL
);

CREATE PROCEDURE sp_ManageStudentAdmission
    @Operation CHAR(1),  -- 'C' for Create, 'R' for Read, 'U' for Update, 'D' for Delete
    @AdmissionID VARCHAR(50) = NULL,  -- Updated to VARCHAR type
    @StudentName NVARCHAR(100) = NULL,
    @DateOfBirth DATE = NULL,
    @Address NVARCHAR(200) = NULL,
    @Course NVARCHAR(50) = NULL
AS
BEGIN

    IF @Operation = 'C'
    BEGIN
        -- Create Operation
        INSERT INTO StudentAdmission (AdmissionID, StudentName, DateOfBirth, Address, Course)
        VALUES (@AdmissionID, @StudentName, @DateOfBirth, @Address, @Course);
    END
    ELSE IF @Operation = 'R'
    BEGIN
        -- Read Operation
        IF @AdmissionID IS NOT NULL
        BEGIN
            -- Retrieve a specific record by AdmissionID
            SELECT *
            FROM StudentAdmission
            WHERE AdmissionID = @AdmissionID;
        END
        ELSE
        BEGIN
            -- Retrieve all records
            SELECT *
            FROM StudentAdmission;
        END
    END
    ELSE IF @Operation = 'U'
    BEGIN
        -- Update Operation
        IF @AdmissionID IS NOT NULL
        BEGIN
            UPDATE StudentAdmission
            SET StudentName = @StudentName,
                DateOfBirth = @DateOfBirth,
                Address = @Address,
                Course = @Course
            WHERE AdmissionID = @AdmissionID;
        END
    END
    ELSE IF @Operation = 'D'
    BEGIN
        -- Delete Operation
        IF @AdmissionID IS NOT NULL
        BEGIN
            DELETE FROM StudentAdmission
            WHERE AdmissionID = @AdmissionID;
        END
    END
    ELSE
    BEGIN
        RAISERROR('Invalid Operation. Use ''C'' for Create, ''R'' for Read, ''U'' for Update, ''D'' for Delete.', 16, 1);
    END
END;


-- Create three student admissions
EXEC sp_ManageStudentAdmission
    @Operation = 'C',  -- Create
    @AdmissionID = 'A001',
    @StudentName = 'John Doe',
    @DateOfBirth = '2000-01-15',
    @Address = '123 Elm Street',
    @Course = 'Mathematics';

	select * from StudentAdmission;

EXEC sp_ManageStudentAdmission
    @Operation = 'C',  -- Create
    @AdmissionID = 'A002',
    @StudentName = 'Jane Smith',
    @DateOfBirth = '1999-05-23',
    @Address = '456 Oak Avenue',
    @Course = 'Physics';

	select * from StudentAdmission;

EXEC sp_ManageStudentAdmission
    @Operation = 'C',  -- Create
    @AdmissionID = 'A003',
    @StudentName = 'Alice Johnson',
    @DateOfBirth = '2001-07-30',
    @Address = '789 Pine Road',
    @Course = 'Biology';

	select * from StudentAdmission;

-- Update a record
EXEC sp_ManageStudentAdmission
    @Operation = 'U',  -- Update
    @AdmissionID = 'A002',
    @StudentName = 'Jane Doe', -- Updated name
	@DateOfBirth = '1999-05-23',
    @Address = '456 Oak Avenue Updated',  -- Updated address
	@Course = 'Physics';

	select * from StudentAdmission;

-- Retrieve a specific record by AdmissionID
EXEC sp_ManageStudentAdmission
    @Operation = 'R',  -- Read
    @AdmissionID = 'A001';

-- Retrieve all records
EXEC sp_ManageStudentAdmission
    @Operation = 'R';  -- Read

-- Delete a record
EXEC sp_ManageStudentAdmission
    @Operation = 'D',  -- Delete
    @AdmissionID = 'A003';

	select * from StudentAdmission;
