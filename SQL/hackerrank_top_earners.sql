-- https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

SELECT
    MAX(SALARY * MONTHS),
    COUNT(*)
FROM EMPLOYEE
WHERE (SALARY * MONTHS) = (SELECT MAX(SALARY * MONTHS) FROM EMPLOYEE);