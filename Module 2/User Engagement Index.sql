SELECT U.user_id, U.name,
       COUNT(DISTINCT R.event_id) AS attended_events,
       COUNT(DISTINCT F.event_id) AS feedbacks_given
FROM Users U
LEFT JOIN Registrations R ON U.user_id = R.user_id
LEFT JOIN Feedback F ON U.user_id = F.user_id
GROUP BY U.user_id, U.name;

