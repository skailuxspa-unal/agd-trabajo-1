SELECT videos.category_id,
 videos.title,
 MAX(videos.views) AS views,
 videos.likes,
 videos.dislikes,
 categorias.category FROM videos INNER JOIN categorias ON videos.category_id=categorias.category_id GROUP BY category ORDER BY videos.views DESC

SELECT videos.category_id,
 videos.title,
 MAX(videos.likes) AS likes,
 videos.views,
 videos.dislikes,
 categorias.category FROM videos INNER JOIN categorias ON videos.category_id=categorias.category_id WHERE ratings_disabled='False' GROUP BY category ORDER BY videos.likes DESC

SELECT videos.category_id,
 videos.title,
 MAX(videos.dislikes) AS dislikes,
 videos.views,
 videos.likes,
 categorias.category FROM videos INNER JOIN categorias ON videos.category_id=categorias.category_id WHERE ratings_disabled='False' GROUP BY category ORDER BY videos.dislikes DESC

SELECT videos.category_id,
 videos.title,
 MIN(videos.views) AS views,
 videos.likes,
 videos.dislikes,
 categorias.category FROM videos INNER JOIN categorias ON videos.category_id=categorias.category_id GROUP BY category ORDER BY videos.views DESC

SELECT videos.category_id,
 videos.title,
 MIN(videos.likes) AS likes,
 videos.views,
 videos.dislikes,
 categorias.category FROM videos INNER JOIN categorias ON videos.category_id=categorias.category_id WHERE ratings_disabled='False' GROUP BY category ORDER BY videos.likes DESC

SELECT videos.category_id,
 videos.title,
 MIN(videos.dislikes) AS dislikes,
 videos.views,
 videos.likes,
 categorias.category FROM videos INNER JOIN categorias ON videos.category_id=categorias.category_id WHERE ratings_disabled='False' GROUP BY category ORDER BY videos.dislikes DESC

SELECT videos.category_id,
 categorias.category,
 COUNT(*) FROM videos INNER JOIN categorias ON videos.category_id=categorias.category_id GROUP BY videos.category_id ORDER BY COUNT(*) DESC

SELECT videos.category_id,
 categorias.category,
 AVG(videos.views) AS views
 FROM videos INNER JOIN categorias ON videos.category_id=categorias.category_id GROUP BY category ORDER BY videos.views DESC

SELECT videos.category_id,
 categorias.category,
 AVG(videos.likes) AS views
 FROM videos INNER JOIN categorias ON videos.category_id=categorias.category_id GROUP BY category ORDER BY videos.likes DESC

SELECT videos.category_id,
 categorias.category,
 AVG(videos.dislikes) AS views
 FROM videos INNER JOIN categorias ON videos.category_id=categorias.category_id GROUP BY category ORDER BY videos.dislikes DESC

SELECT videos.category_id,
 categorias.category,
 videos.title,
 MIN(videos.views) AS views,
 videos.likes,
 videos.dislikes
 FROM videos INNER JOIN categorias ON videos.category_id=categorias.category_id

SELECT videos.category_id,
 categorias.category,
 videos.title,
 videos.views,
 MIN(videos.likes) AS likes,
 videos.dislikes
 FROM videos INNER JOIN categorias ON videos.category_id=categorias.category_id WHERE ratings_disabled='False' 

SELECT videos.category_id,
 categorias.category,
 videos.title,
 videos.views,
 videos.likes,
 MIN(videos.dislikes) as dislikes
 FROM videos INNER JOIN categorias ON videos.category_id=categorias.category_id WHERE ratings_disabled='False' 