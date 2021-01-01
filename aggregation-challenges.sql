# HACKER RANK - AGGREGATION CHALLENGES (started 1/1/21) -- includes FLOOR

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

SELECT FLOOR(AVG(population))
FROM city;


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

# Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES
