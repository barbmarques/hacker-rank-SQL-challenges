# Hacker Rank Challenges - Day Two



# STATION: id (NUMBER), city (VARCHAR2(21)), state (VARCHAR2(2), lat_n (NUMBER), long_w (NUMBER)



# Weather Observation Station 4
# Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.

SELECT (SELECT COUNT(city)) - (SELECT COUNT(DISTINCT city))
FROM station;


# Weather Observation Station 5
# Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically


(SELECT *
	FROM 
		(	SELECT city, char_length(city) 
			FROM station 
			ORDER BY length(city) DESC, city ASC
			LIMIT 1) 
		AS A)

UNION

(SELECT *
	FROM 
		(	SELECT city, char_length(city) 
			FROM station 
			ORDER BY length(city) ASC, city ASC
			LIMIT 1) 
		AS B);
		
		
# Weather Observation Station 6
# Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

SELECT DISTINCT city
FROM station
WHERE city LIKE 'a%' 
        OR city LIKE 'e%' 
        OR city LIKE 'i%' 
        OR city LIKE 'o%' 
        OR city LIKE 'u%';
        
        
# Weather Observation Station 7
# Query the list of CITY names ending with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

SELECT DISTINCT city
FROM station
WHERE city LIKE '%a' 
        OR city LIKE '%e' 
        OR city LIKE '%i' 
        OR city LIKE '%o' 
        OR city LIKE '%u';
    
    
    
# Weather Observation Station 8
# Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, or u) as both their first and last characters. 

SELECT DISTINCT city
FROM station
WHERE LEFT(city,1) IN ('a','e','i','o','u')
      AND
      RIGHT(city, 1) IN ('a','e','i','o','u'); 
      
      
# Weather Observation Station 9
# Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

SELECT DISTINCT city
FROM station
WHERE LEFT(city,1) NOT IN ('a','e','i','o','u'); 


# Weather Observation Station 10
# Query the list of CITY names from STATION that do not END with vowels. Your result cannot contain duplicates.

SELECT DISTINCT city
FROM station
WHERE RIGHT(city,1) NOT IN ('a','e','i','o','u'); 
             
             	
# Weather Observation Station 11
# Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

SELECT DISTINCT city
FROM station
WHERE RIGHT(city,1) NOT IN ('a','e','i','o','u')
			OR
			LEFT(city,1) NOT IN ('a','e','i','o','u'); 
             
             
# Weather Observation Station 12
# Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

SELECT DISTINCT city
FROM station
WHERE RIGHT(city,1) NOT IN ('a','e','i','o','u')
			AND
			LEFT(city,1) NOT IN ('a','e','i','o','u'); 
