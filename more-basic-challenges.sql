# Hacker Rank Challenges - Day Two



# STATION: id (NUMBER), city (VARCHAR2(21)), state (VARCHAR2(2), lat_n (NUMBER), long_w (NUMBER)



# Weather Observation Station 4
# Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.

SELECT (SELECT COUNT(city)) - (SELECT COUNT(DISTINCT city))
FROM station;


# Weather Observation Station 5
# Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically


SELECT MAX(LENGTH(city)), MIN(LENGTH(city))
FROM station;


