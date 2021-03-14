#################################################################
# Mihir Patel
# Date: 3/13/2021
# File: get_nth_highest_salary.sql
#################################################################

# Write a SQL query to get the nth highest salary from the Employee table.
# 
# +----+--------+
# | Id | Salary |
# +----+--------+
# | 1  | 100    |
# | 2  | 200    |
# | 3  | 300    |
# +----+--------+
# 
# For example, given the above Employee table, 
# the nth highest salary where n = 2 is 200. 
# If there is no nth highest salary, then the query should return null.
# 
# +------------------------+
# | getNthHighestSalary(2) |
# +------------------------+
# | 200                    |
# +------------------------+
# 

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  set N = N - 1;
  RETURN (
      # Write your MySQL query statement below.
      select distinct Employee.Salary
      from Employee
      order by Employee.Salary desc
      limit N, 1
  );
END
