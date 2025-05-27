SELECT A.session_id AS session1, B.session_id AS session2, A.event_id
FROM Sessions A
JOIN Sessions B ON A.event_id = B.event_id
WHERE A.session_id < B.session_id
  AND A.start_time < B.end_time
  AND B.start_time < A.end_time;

