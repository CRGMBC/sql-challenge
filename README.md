# sql-challenge
Module 9 challenge

Copied provided Starter code folder to a local Git repository called sql-challenge

I converted the hire_date and birth_date fields in the employees.csv Starrer code file to yyyy-mm-dd to enable importing to newly created sql table via pgAdmin4.  I saved this as 'employees_dateconverted.csv' in the Starter code folder.

I created a Conceptual model of the tables and then expanded to Logical models to ensure primary keys were unique
Then the Physical model was mapped with the entities provided, their types and relationships.
These are visible in the schema image generated using quickdatabasediagrams app.  (see Schema image - QuickDBD under EmployeeSQL)

In pgAdmin4, there is an sql to create the 6 tables for csv files provided in the statercode (see createtables.sql under EmployeeSQL)
Note - I used the converted employee csv (employees_dateconverted.csv) mentioned ealier

After creating the 6 tables, I added some basic data in each table to ensure I didnt have any issues when importing csv's.  
I found I needed to add some constraints to the DeptEmployee and DeptManager tables.

I created a separate 'add constraint' sql where I used function 'Alter table' to ensure that only unique combinations of employee number and department number were allowed.

Data Analysis:
1. Joined the Employees and Salary tables on emp_no.  

2. Where statement used in employee table to filter data

3. used 3 tables, Employees, Departments and Deptmanager. 
Used the emp_no as the join of Employees and Deptmanager tables and dept_no as the join of Department and Deptmanager tables.

4. used 3 tables, Employees, Departments and Deptemployee. 
Used the emp_no as the join of Employees and Deptemployee tables and dept_no as the join of Department and Deptemployee tables.

5. Where satatement used in the Employees table.
used wildcard Like 'B%' to select last_name beginning with B

6. used 3 tables, Employees, Departments and Deptemployee. 
Used the emp_no as the join of Employees and Deptemployee tables and dept_no as the join of Department and Deptemployee tables.
Filtered data using Where statement

7.  used 3 tables, Employees, Departments and Deptemployee. 
Used the emp_no as the join of Employees and Deptemployee tables and dept_no as the join of Department and Deptemployee tables.
Filtered data using Where statement and selected 2 fields to filter by.

8. used the Employees table.
Grouped by the last_name filed and counted the emp_no to determine the number of employees with the specific last_name
Ordered in descending order of number of employees.