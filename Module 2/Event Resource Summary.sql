SELECT event_id,
       SUM(CASE WHEN type = 'PDF' THEN 1 ELSE 0 END) AS pdfs,
       SUM(CASE WHEN type = 'image' THEN 1 ELSE 0 END) AS images,
       SUM(CASE WHEN type = 'link' THEN 1 ELSE 0 END) AS links
FROM Resources
GROUP BY event_id;

