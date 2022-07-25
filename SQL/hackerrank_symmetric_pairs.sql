-- https://www.hackerrank.com/challenges/symmetric-pairs/problem?isFullScreen=true&h_r=next-challenge&h_v=zen

SELECT
    F1.x,
    F1.y
FROM FUNCTIONS F1
INNER JOIN FUNCTIONS F2
    ON F1.x = F2.y AND F1.y = F2.x
GROUP BY F1.x, F1.y
HAVING F1.x < F1.y OR COUNT(F1.x) > 1
ORDER BY F1.x;