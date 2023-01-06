-- Create a combined table with cumulative course meta numbers
-- like rates, and other data

WITH course_meta_cum AS (
	SELECT catch
	, id
	, tag
	, stars
	, players
	, tweets
	, clears
	, attempts
	, clearrate
	, RANK() OVER (PARTITION BY id ORDER BY catch DESC)
	FROM course_meta
),
like_rates AS (
	SELECT l.id
	, COUNT(DISTINCT l.player) AS likes
	, COUNT(p.player) AS players
	, COUNT(DISTINCT l.player)/CAST(COUNT(DISTINCT p.player) AS DECIMAL) AS like_rate
	FROM likes l
	JOIN plays p ON
	l.id = p.id
	GROUP BY l.id
)

SELECT * FROM course_meta_cum cmc
JOIN courses c
ON cmc.id = c.id
JOIN like_rates lr
ON cmc.id = lr.id
WHERE rank = 1
