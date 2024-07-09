name	continent	area	population	gdp
Afghanistan	Asia	652230	25500100	20343000000
Albania	Europe	28748	2831741	12960000000
Algeria	Africa	2381741	37100000	188681000000
Andorra	Europe	468	78115	3712000000
Angola	Africa	1246700	20609294	100990000000
...

1 Observe the result of running this SQL command to show the name, continent and population of all countries.

SELECT name, continent, population FROM world

.
2 How to use WHERE to filter records. Show the name for the countries that have a population of at least 200 million. 200 million is 200000000, there are eight zeros.

SELECT name FROM world
WHERE population >=200000000

3 Give the name and the per capita GDP for those countries with a population of at least 200 million.

select name , gdp/population  from world where population>=200000000

4 Show the name and population in millions for the countries of the continent 'South America'. Divide the population by 1000000 to get population

select name , population/1000000 from world where continent='South America' 

5 Show the name and population for France, Germany, Italy

select name , population from world where name in('France','Germany','Italy')

6. Show the countries which have a name that includes the word 'United'

select name from world where name like '%United%'

7 Show the name and population in millions and the GDP in billions for the countries of the continent 'South America'. Use the ROUND function to show the values to two decimal places.

select name,round(population/1000000,2), round(gdp/1000000000,2) from world where continent='South America'

8 Show the name and capital where the name and the capital have the same number of characters.

select name, capital from world where length(name)=length(capital)