-- https://www.hackerrank.com/challenges/what-type-of-triangle/submissions/database/280733469

SELECT (
    CASE
        WHEN (A + B <= C) THEN 'Not A Triangle'
        WHEN A = B AND A = C AND B = C THEN 'Equilateral'
        WHEN A = B OR A =C OR B = C THEN 'Isosceles'
        WHEN A <> B AND A <> C AND B <> C THEN 'Scalene'
    END) AS Triangle
FROM TRIANGLES;