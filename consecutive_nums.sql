#################################################################
# Mihir Patel
# Date: 3/14/2021
# File: consecutive_nums.sql 
#################################################################
# Table: Logs
# 
# +-------------+---------+
# | Column Name | Type    |
# +-------------+---------+
# | id          | int     |
# | num         | varchar |
# +-------------+---------+
# id is the primary key for this table.
# 
#  
# 
# Write an SQL query to find all numbers that appear at least three times consecutively.
# 
# Return the result table in any order.
# 
# The query result format is in the following example:
# 
#  
# 
# Logs table:
# +----+-----+
# | Id | Num |
# +----+-----+
# | 1  | 1   |
# | 2  | 1   |
# | 3  | 1   |
# | 4  | 2   |
# | 5  | 1   |
# | 6  | 2   |
# | 7  | 2   |
# +----+-----+
# 
# Result table:
# +-----------------+
# | ConsecutiveNums |
# +-----------------+
# | 1               |
# +-----------------+
# 1 is the only number that appears consecutively for at least three times.

select distinct Logs1.Num as ConsecutiveNums
from Logs as Logs1, Logs as Logs2, Logs as Logs3
where Logs1.Num = Logs2.Num
and Logs2.Num = Logs3.Num
and Logs1.Id = Logs2.Id - 1
and Logs2.Id = Logs3.Id - 1
