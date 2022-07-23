-- https://www.hackerrank.com/challenges/more-than-75-marks/submissions/code/279048154

SELECT
    Name
FROM
    STUDENTS
WHERE
    Marks > 75
ORDER BY SUBSTR(Name, Length(Name)-2,3) ASC, ID ASC;