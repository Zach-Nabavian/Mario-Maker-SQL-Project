CREATE TABLE clears (
	catch VARCHAR
	, id VARCHAR
	, player VARCHAR
);

COPY clears
FROM '/tmp/clears.csv'
DELIMITER '	'
CSV HEADER;

CREATE TABLE course_meta (
	catch VARCHAR
	, id VARCHAR
	, firstClear VARCHAR
	, tag VARCHAR
	, stars INTEGER
	, players INTEGER
	, tweets INTEGER
	, clears INTEGER
	, attempts INTEGER
	, clearRate DECIMAL
);

COPY course_meta
FROM '/tmp/course-meta.csv'
DELIMITER '	'
CSV HEADER;

CREATE TABLE courses (
	id VARCHAR
	, difficulty VARCHAR
	, gameStyle VARCHAR
	, maker VARCHAR
	, title VARCHAR
	, thumbnail VARCHAR
	, image VARCHAR
	, creation VARCHAR
);

COPY courses
FROM '/tmp/courses.csv'
DELIMITER '	'
CSV HEADER;

CREATE TABLE likes (
	catch VARCHAR
	, id VARCHAR
	, player VARCHAR
);

COPY likes
FROM '/tmp/likes.csv'
DELIMITER '	'
CSV HEADER;

CREATE TABLE players (
	id VARCHAR
	, image VARCHAR
	, flag VARCHAR(2)
	, name VARCHAR
);

COPY players
FROM '/tmp/players.csv'
DELIMITER '	'
CSV HEADER;

CREATE TABLE plays (
	catch VARCHAR
	, id VARCHAR
	, player VARCHAR
);

COPY plays
FROM '/tmp/plays.csv'
DELIMITER '	'
CSV HEADER;

CREATE TABLE records (
	catch VARCHAR
	, id VARCHAR
	, player VARCHAR
	, timeRECORD VARCHAR
);

COPY records
FROM '/tmp/records.csv'
DELIMITER '	'
CSV HEADER;