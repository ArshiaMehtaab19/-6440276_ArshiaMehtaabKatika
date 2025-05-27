SELECT event_id, AVG(rating) AS avg_rating
FROM Feedback
GROUP BY event_id
HAVING COUNT(*) >= 10
ORDER BY avg_rating DESC;

