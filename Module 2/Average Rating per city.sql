SELECT E.city, AVG(F.rating) AS avg_rating
FROM Feedback F
JOIN Events E ON F.event_id = E.event_id
GROUP BY E.city;
