-- https://www.hackerrank.com/challenges/average-population-of-each-continent/submissions/code/279402031

SELECT
    COUNTRY.Continent,
    FLOOR(AVG(CITY.Population))
FROM CITY
INNER JOIN COUNTRY
ON
    COUNTRY.Code=CITY.CountryCode
GROUP BY COUNTRY.Continent;