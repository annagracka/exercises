SELECT
    (CASE
        WHEN S.Marks < 70 THEN NULL
        ELSE S.Name
    END) Name,
        (SELECT
        G.Grade
    FROM GRADES G
    WHERE S.Marks >= G.Min_Mark AND S.Marks <= G.Max_Mark) Grade,
    S.Marks
FROM STUDENTS S
ORDER BY Grade DESC, Name;