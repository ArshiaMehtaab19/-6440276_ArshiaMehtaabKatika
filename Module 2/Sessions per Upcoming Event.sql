SELECT E.event_id, E.name, COUNT(S.session_id) AS session_count
FROM Events E
LEFT JOIN Sessions S ON E.event_id = S.event_id
WHERE E.start_date > CURRENT_DATE
GROUP BY E.event_id, E.name;

