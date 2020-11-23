--departments table
CREATE TABLE departments (
  dept_no VARCHAR PRIMARY KEY,
  dept_name VARCHAR 
);

-- TITLES TABLE
CREATE TABLE titles (
	title_ID VARCHAR PRIMARY KEY,
	title VARCHAR
);

--employees table
CREATE TABLE employees (
  emp_no VARCHAR PRIMARY KEY,
  emp_title_id VARCHAR REFERENCES titles(title_id),
  birth_date DATE,
  first_name VARCHAR,
  last_name VARCHAR,
  sex VARCHAR,
  hire_date DATE
);

--SALARY TABLE
CREATE TABLE salaries (
	emp_no VARCHAR REFERENCES employees(emp_no),
	salary INT
);

--DEPARTMENT MANAGER TABLE
CREATE TABLE dept_manager (
	dept_no VARCHAR REFERENCES departments(dept_no),
	emp_no VARCHAR REFERENCES employees(emp_no),
	CONSTRAINT pk_dept_manager PRIMARY KEY ( dept_no,emp_no )
);

-- EMPLOYEE DEPARTMENT TABLE
CREATE TABLE dept_emp (
	emp_no VARCHAR REFERENCES employees(emp_no),
	dept_no VARCHAR REFERENCES departments(dept_no),
	CONSTRAINT pk_dept_emp PRIMARY KEY ( dept_no,emp_no )
);