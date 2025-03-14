# Write your MySQL query statement below
select unique_id, name
from employees
left outer join  EmployeeUNI
on Employees.id = employeeUni.id; 
