SELECT U.user_id, U.name
FROM Users U
LEFT JOIN Registrations R ON U.user_id = R.user_id
GROUP BY U.user_id, U.name
HAVING MAX(R.registration_date) IS NULL OR MAX(R.registration_date) < CURRENT_DATE - INTERVAL 90 DAY;

