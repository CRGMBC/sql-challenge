SELECT 
    d.dept_no AS "Department Number",
    d.dept_name AS "Department Name",
    dm.emp_no AS "Manager Employee Number",
    e.last_name AS "Last Name",
    e.first_name AS "First Name"
FROM
    departments d
JOIN
    deptmanager dm ON d.dept_no = dm.dept_no
JOIN
    employees e ON dm.emp_no = e.emp_no;