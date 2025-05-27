SELECT DATE(created_at) AS reg_date, COUNT(*) AS new_users
FROM Users
WHERE created_at >= CURRENT_DATE - INTERVAL 7 DAY
GROUP BY DATE(created_at)
ORDER BY reg_date;

