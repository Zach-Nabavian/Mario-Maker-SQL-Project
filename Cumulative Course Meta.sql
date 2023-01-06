-- Create a copy of the 'course meta' table 
-- only with cumulative numbers

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
)

SELECT * FROM course_meta_cum
WHERE rank = 1

