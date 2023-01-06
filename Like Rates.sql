-- Determine a level's 'like rate'
-- the percent of people who played a level who liked the level 

SELECT l.id
, COUNT(DISTINCT l.player) AS likes
, COUNT(p.player) AS players
, COUNT(DISTINCT l.player)/CAST(COUNT(DISTINCT p.player) AS DECIMAL) AS like_rate
FROM likes l
JOIN plays p ON
	l.id = p.id
GROUP BY l.id
ORDER BY like_rate DESC


