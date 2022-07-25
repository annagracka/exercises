SELECT
    CON.contest_id,
    CON.hacker_id hacker_id,
    CON.name,
    SUM(S.total_submissions) total_submissions,
    SUM(S.total_accepted_submissions) total_accepted_submissions,
    SUM(V.total_views) total_views,
    SUM(V.total_unique_views) total_unique_views
FROM CONTESTS CON
LEFT JOIN COLLEGES COLL
    ON CON.contest_id = COLL.contest_id
LEFT JOIN CHALLENGES CH
    ON COLL.college_id = CH.college_id
LEFT JOIN (SELECT
              challenge_id,
              SUM(total_views) total_views,
              SUM(total_unique_views) total_unique_views
          FROM VIEW_STATS
          GROUP BY challenge_id) V
    ON CH.challenge_id = V.challenge_id
LEFT JOIN (SELECT
           challenge_id,
           SUM(total_submissions) total_submissions,
           SUM(total_accepted_submissions) total_accepted_submissions
           FROM SUBMISSION_STATS
           GROUP BY challenge_id) S
    ON CH.challenge_id = S.challenge_id
GROUP BY CON.contest_id, CON.hacker_id, CON.name
HAVING SUM(total_submissions +
        total_accepted_submissions +
        total_views +
        total_unique_views) > 0
ORDER BY CON.contest_id;