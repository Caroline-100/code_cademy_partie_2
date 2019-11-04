select * from population_years LIMIT 10; 

select * from countries  LIMIT 10;

select distinct name from countries WHERE continent LIKE '%Africa%' LIMIT 10;

-- ####################              3
select distinct count(name) from countries WHERE continent LIKE '%Africa%';

-- ####################              4
select SUM(population) from population_years 
INNER JOIN countries 
ON countries.id = population_years.id
WHERE year = 2005
AND continent = 'Oceania';

-- ####################              5
select AVG(population) from population_years 
INNER JOIN countries 
ON countries.id = population_years.id
WHERE year = 2003
AND continent = 'South America';

-- ####################              6
select name,country_id,MIN(population) from population_years 
INNER JOIN countries 
ON countries.id = population_years.id
WHERE year = 2007;

-- ####################              7
select country_id,name,AVG(population) from population_years 
INNER JOIN countries 
ON countries.id = population_years.country_id
WHERE name =  'Poland';

- ####################              8
select count(name) from countries 
WHERE name LIKE '%The%';
-- what is it?
select name from countries 
WHERE name LIKE '%The%';

SELECT SUM(population) AS SUM ,continent FROM population_years
INNER JOIN countries 
ON countries.id = population_years.country_id
WHERE year = 2010
GROUP BY continent;