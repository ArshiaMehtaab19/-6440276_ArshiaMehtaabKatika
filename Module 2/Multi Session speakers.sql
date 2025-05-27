SELECT speaker_id, COUNT(DISTINCT session_id) AS session_count
FROM Speakers
GROUP BY speaker_id
HAVING session_count > 1;

