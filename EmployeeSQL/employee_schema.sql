CREATE TABLE Employees(
	emp_no INT PRIMARY KEY NOT NULL,
    emp_title_id VARCHAR(30) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(35) NOT NULL,
    last_name VARCHAR(35) NOT NULL,
    sex VARCHAR(10) NOT NULL,
    hire_date DATE NOT NULL,
	FOREIGN KEY(emp_title_id) REFERENCES Titles(title_id)
);
-- Linking table that allows you to associate any number of departments with a given employee
CREATE TABLE Department_Employees(
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES Departments(dept_no),
	PRIMARY KEY(emp_no,dept_no)
);

CREATE TABLE Departments(
    dept_no VARCHAR(10) PRIMARY KEY NOT NULL,
    dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE Department_Manager(
    dept_no VARCHAR(10) NOT NULL,
    emp_no INT NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES Departments(dept_no),
	FOREIGN KEY(emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Salaries(
    emp_no INT NOT NULL,
    salary INT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Titles(
    title_id VARCHAR(10) PRIMARY KEY NOT NULL,
    title VARCHAR(30) NOT NULL
);


select * from Employees
