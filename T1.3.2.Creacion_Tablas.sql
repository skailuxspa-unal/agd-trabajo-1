BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "categorias" (
	"category_id"	INTEGER NOT NULL UNIQUE,
	"category"	VARCHAR(25) NOT NULL,
	PRIMARY KEY("category_id")
);
CREATE TABLE IF NOT EXISTS "comentarios" (
	"comment_id"	INTEGER NOT NULL UNIQUE,
	"video_id"	VARCHAR(15) NOT NULL,
	"viewer_id"	VARCHAR(25) NOT NULL,
	"comment_text"	TEXT NOT NULL,
	"like_count"	INTEGER NOT NULL,
	"reply_count"	INTEGER NOT NULL,
	PRIMARY KEY("comment_id")
);
CREATE TABLE IF NOT EXISTS "videos" (
	"video_id"	VARCHAR(15) NOT NULL UNIQUE,
	"category_id"	INTEGER NOT NULL,
	"publish_time"	VARCHAR(20) NOT NULL,
	"channel_title"	VARCHAR(50) NOT NULL,
	"title"	VARCHAR(150) NOT NULL,
	"description"	TEXT,
	"trending_date"	VARCHAR(10),
	"thumbnail_link"	TEXT,
	"comments_disabled"	BIT,
	"ratings_disabled"	BIT,
	"video_error_or_removed"	BIT,
	"views"	INTEGER,
	"likes"	INTEGER,
	"dislikes"	INTEGER,
	"comment_count"	INTEGER,
	"tags"	TEXT,
	PRIMARY KEY("video_id","category_id")
);
CREATE TABLE IF NOT EXISTS "usuarios" (
	"viewer_id"	VARCHAR(25) NOT NULL UNIQUE,
	"viewer_display_name"	TEXT,
	PRIMARY KEY("viewer_id")
);
COMMIT;
