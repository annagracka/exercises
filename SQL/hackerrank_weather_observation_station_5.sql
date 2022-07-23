-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem

SELECT
    city, LENGTH(city) word_length
FROM
    station
WHERE
    city IN
    (SELECT
        city
    FROM
        (SELECT
             city,
             LENGTH(city) word_length
        FROM station
        ORDER BY word_length ASC, city ASC)
    WHERE rownum <= 1)
    OR
    city IN
    (SELECT
        city
    FROM
        (SELECT
             city,
             LENGTH(city) word_length
        FROM station
        ORDER BY word_length DESC, city ASC)
    WHERE ROWNUM <= 1);