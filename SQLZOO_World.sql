Observe the result of running this SQL command to show the name, continent and population of all countries.

SELECT name, continent, population FROM world

Show the name for the countries that have a population of at least 200 million. 200 million is 200000000, there are eight zeros.

SELECT name FROM world WHERE population >= 200000000

Give the name and the per capita GDP for those countries with a population of at least 200 million.

SELECT name, gdp/population FROM world WHERE population > 200000000

Show the name and population in millions for the countries of the continent 'South America'. Divide the population by 1000000 to get population in millions.

select name , population/1000000  from world where continent = 'South America'

Show the name and population for France, Germany, Italy

select name , population from world where name in ('France', 'Germany', 'Italy')

Show the countries which have a name that includes the word 'United'

select name from world where name like '%United%'

Show the countries that are big by area or big by population. Show name, population and area.

select name,population,area from world where area > 3000000 or population > 250000000

Show name, population and area.

Australia has a big area but a small population, it should be included.
Indonesia has a big population but a small area, it should be included.
China has a big population and big area, it should be excluded.
United Kingdom has a small population and a small area, it should be excluded.

select name,population,area from world where area > 3000000 xor population > 250000000

For South America show population in millions and GDP in billions both to 2 decimal places.

select name , ROUND(population/1000000,2) ,ROUND(gdp/1000000000,2) FROM world WHERE CONTINENT = 'South America'

Show per-capita GDP for the trillion dollar countries to the nearest $1000.

select name , ROUND((gdp/population),-3) from world where GDP >= 1000000000000

Show the name and capital where the name and the capital have the same number of characters.

SELECT name, capital  FROM world where length(name) = LENGTH(capital)

Show the name and the capital where the first letters of each match. Dont include countries where the name and the capital are the same word.

SELECT name, capital FROM world where LEFT(NAME,1) = LEFT(CAPITAL,1) AND NAME != CAPITAL

Find the country that has all the vowels and no spaces in its name.

SELECT name FROM world WHERE
lower(name) LIKE '%a%'
and lower(name) LIKE '%e%'
and lower(name) LIKE '%i%'
and lower(name) LIKE '%o%'
and lower(name) LIKE '%u%'
AND name NOT LIKE '% %'
