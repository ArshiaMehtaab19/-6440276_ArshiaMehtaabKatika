SELECT organizer_id,
       COUNT(*) AS total_events,
       SUM(CASE WHEN status = 'upcoming' THEN 1 ELSE 0 END) AS upcoming,
       SUM(CASE WHEN status = 'completed' THEN 1 ELSE 0 END) AS completed,
       SUM(CASE WHEN status = 'cancelled' THEN 1 ELSE 0 END) AS cancelled
FROM Events
GROUP BY organizer_id;

