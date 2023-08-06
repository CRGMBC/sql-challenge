create table Departments (
	dept_no CHAR(4) primary key not null,
	dept_name VARCHAR(20) not null,
);

create table Titles (
	title_id CHAR(5) primary key not null,
	title VARCHAR(20) not null,
);

create table Employees (
	emp_no INTEGER primary key not null,
	emp_title_id CHAR(5) REFERENCES Titles(title_id),
	birth_date DATE not null,
	first_name VARCHAR(20) not null,
	last_name VARCHAR(20) not null,
	sex CHAR(1),
	hire_date DATE not null,
);

create table Salary (
	emp_no INTEGER REFERENCES Employees(emp_no),
	salary INTEGER,
);

create table DeptManger (
	dept_no CHAR(4) REFERENCES Departments(dept_no),
	emp_no INTEGER REFERENCES Employees(emp_no),
);

create table DeptEmployee (
	emp_no INTEGER REFERENCES Employees(emp_no),
	dept_no CHAR(4) REFERENCES Departments(dept_no),
)