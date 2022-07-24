-- https://www.hackerrank.com/challenges/the-blunder/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

SELECT
    CEIL((AVG(SALARY) - AVG(TO_NUMBER(REGEXP_REPLACE(TO_CHAR(SALARY),'0','')))))
FROM EMPLOYEES;