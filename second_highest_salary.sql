#################################################################
# Mihir Patel
# Date: 3/13/2021
# File: second_highest_salary.sql
#################################################################

# Write a SQL query to get the second highest salary from the Employee table.
# 
# +----+--------+
# | Id | Salary |
# +----+--------+
# | 1  | 100    |
# | 2  | 200    |
# | 3  | 300    |
# +----+--------+
# 
# For example, given the above Employee table, the query should 
# return 200 as the second highest salary. 
# If there is no second highest salary, 
# then the query should return null.
# 
# +---------------------+
# | SecondHighestSalary |
# +---------------------+
# | 200                 |
# +---------------------+

select max(Employee.Salary) as SecondHighestSalary
from Employee
where Employee.Salary < (select max(e.salary)
                         from Employee e)
