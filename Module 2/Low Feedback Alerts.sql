SELECT F.user_id, U.name, F.rating, F.comment, E.name AS event_name
FROM Feedback F
JOIN Users U ON F.user_id = U.user_id
JOIN Events E ON F.event_id = E.event_id
WHERE F.rating < 3;

