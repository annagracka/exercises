-- https://www.hackerrank.com/challenges/the-pads/copy-from/280748455

SELECT
    NAME || '(' || SUBSTR(OCCUPATION,1,1) || ')' AS PEOPLE
FROM OCCUPATIONS
ORDER BY PEOPLE;

SELECT
    'There are a total of ' || COUNT(SUBSTR(OCCUPATION,1,1)) || ' ' || LOWER(OCCUPATION) || 's.'
    AS JOBS
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY JOBS;