SELECT E.event_id, E.name
FROM Events E
LEFT JOIN Resources R ON E.event_id = R.event_id
GROUP BY E.event_id, E.name
HAVING COUNT(R.resource_id) = 0;

