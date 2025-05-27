SELECT E.event_id, E.name
FROM Events E
JOIN Registrations R ON E.event_id = R.event_id
LEFT JOIN Feedback F ON R.event_id = F.event_id
GROUP BY E.event_id, E.name
HAVING COUNT(F.feedback_id) = 0;

