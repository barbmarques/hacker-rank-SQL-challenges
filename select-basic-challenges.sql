# STUDENTS CHALLENGE

# STUDENTS:  ID (integer), Name (String), Marks (Integer)

# Query the name of any student in STUDENTS who scored higher than 75 marks.  Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e., Bobby, Robby), secondary sort them by ascending ID.

SELECT name
FROM students
WHERE marks>75
ORDER BY RIGHT(name,3) ASC, id ASC;


# EMPLOYEE NAMES Challenge

# EMPLOYEE: employee_id (Integer), name (String), months (Integer), salary (Integer)

# Write a query that prints a list of employee names from the Employee table in alphabetical order. 

SELECT name
FROM employee
ORDER BY name ASC;


# EMPLOYEE SALARIES Challenge

# Write a query that prints a list of employee names for employees in Employee having a salary greater than $2000 per month who have been employees for less than 10 months. Sort your result by ascending employee_id.

SELECT name
FROM employee
WHERE salary > 2000
AND months < 10;

