# HACKER RANK - AGGREGATION CHALLENGES (started 1/1/21) -- includes FLOOR, CEIL, REPLACE

# CITY: id(number), name(varchar2(17)), countrycode(varchar2(3)), district(varchar2(20)), population(number)

# AGGREGATIONS - THE COUNT FUNCTION
# Query a count of the number of cities in CITY having a population larger than 100,000

SELECT COUNT(name)
FROM city
WHERE population > 100000;


# AGGREGATIONS - THE SUM FUNCTION
# Query the total population of all cities in CITY where District is California

SELECT SUM(population)
FROM city
WHERE district = 'California';


# AGGREGATIONS - AVERAGES
# Query the average population of all cities in CITY where District is California

SELECT AVG(population)
FROM city
WHERE district = 'California';


# AGGREGATION - AVERAGE POPULATION
# Query the average population for all cities in CITY, rounded down to the nearest integer

SELECT CEIL((AVG(salary)) - (AVG(REPLACE(salary,'0',''))))
FROM employees;


# AGGREGATION - JAPAN POPULATION
# Query the sum of the population for all Japanese cities in CITY. The countrycode for Japan is JPN.

SELECT SUM(population)
FROM city
WHERE countrycode = 'JPN';


# AGGREGATION - POPULATION DENSITY DIFFERENCE
# Query the difference between the maximum and minimum populations in CITY.

SELECT MAX(population) - MIN(population)
FROM city;



# AGGREGATION - THE BLUNDER
# Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's 0 key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeroes removed), and the actual average salary.  Write a query calculating the amount of error (i.e., actual - miscalculated average momnthly salaries), and round it up to the next integer

# EMPLOYEES: id (Integer), name (String), salary (Integer) 

SELECT CEIL((AVG(salary)) - (AVG(REPLACE(salary,'0',''))))
FROM employees;


# AGGREGATION - TOP EARNERS
# We define an employee's total earnings to be their monthly salary x months worked, and the maximum total earnings to be the maximum total earnings for any employee in the EMPLOYEE table.  Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings.  Then print these values as 2 space-separated integers.

# EMPLOYEE: employee_id (INT), name (STR), months (INT), salary (INT)

# YOU CAN'T USE AN AGGREGATE FUNCTION IN A WHERE CLAUSE

SELECT (months*salary) AS earnings, COUNT(*) 
FROM employee
GROUP BY earnings 
ORDER BY earnings DESC
LIMIT 1;


# AGGREGATE - WEATHER OBSERVATION STATION 20

# Query the following two values from the STATION table: 
	 -- the sum of all values in LAT_N rounding to a scale of 2 decimal places
	 -- the sum of all values in LONG_W rounded to a scale of 2 decimal places
	 
	 #STATION: id, city, state, lat_n, long_w
	 
SELECT ROUND(SUM(lat_n),2), ROUND(SUM(long_w),2)
FROM station;

# AGGREGATE - WEATHER OBSERVATION STATION 13

# Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than 137.2345. Truncate your answer to 4 decimal places. 

SELECT TRUNCATE(SUM(lat_n),4)
FROM station
WHERE lat_n>38.7880
				AND lat_n<137.2345;
				
				
# AGGREGATE - WEATHER OBSERVATION STATION 14

# Query the greatest value of the northern latitudes (lat_n) from STATION that is less than 137.2345. Truncate your answer to 4 decimal places. 


SELECT TRUNCATE((lat_n),4)
FROM station
WHERE lat_n<137.2345
ORDER BY lat_n DESC
LIMIT 1;

# AGGREGATE - WEATHER OBSERVATION STATION 15

# Query the western longitude (long_w) for the largest northern (lat_n) in STATION that is less than 137.2345. Round your answer to 4 decimal places.

SELECT ROUND((long_w),4)
FROM station
WHERE lat_n<137.2345
ORDER BY lat_n DESC
LIMIT 1;


# AGGREGATE - WEATHER OBSERVATION STATION 16

# Query the smallest Northern Latitude (lat_n) from STATION that is greater than 38.7780. Round your answer to 4 decimal places. 

SELECT ROUND((lat_n),4)
FROM station
WHERE lat_n>38.7780
ORDER BY lat_n ASC
LIMIT 1;



