-- How many entries in the database are from Africa?

SELECT COUNT(*)
FROM countries
WHERE continent = 'Africa';


-- What was the total population of Oceania in 2005?

SELECT SUM(population)
FROM population_years
JOIN countries
ON population_years.country_id = countries.id
WHERE continent = 'Oceania' AND year = 2005;


-- What is the average population of countries in South America in 2003?

SELECT AVG(population)
FROM population_years
JOIN countries
ON population_years.country_id = countries.id
WHERE continent = 'South America' AND year = 2003;


-- What country had the smallest population in 2007?

SELECT name, continent, MIN(population) AS 'population (in millions)'
FROM population_years
JOIN countries
ON population_years.country_id = countries.id
WHERE population_years.year = 2007;



-- What is the average population of Poland during the time period covered by this dataset?

SELECT AVG(population) AS 'AVG Poland Pop'
FROM population_years
JOIN countries
ON population_years.country_id = countries.id
WHERE countries.name = 'Poland';



-- How many countries have the word "The" in their name?

SELECT COUNT(*) AS '# Countries'
FROM countries
WHERE name LIKE '%the%';



-- What was the total population of each continent in 2010?

SELECT continent, SUM(population) AS 'population'
FROM population_years
JOIN countries
ON population_years.country_id = countries.id
WHERE year = 2010
GROUP BY 1
ORDER BY 2 DESC;