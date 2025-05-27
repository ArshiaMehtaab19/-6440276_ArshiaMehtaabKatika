SELECT E.event_id, E.name
FROM Events E
LEFT JOIN Sessions S ON E.event_id = S.event_id
GROUP BY E.event_id, E.name
HAVING COUNT(S.session_id) = 0;

