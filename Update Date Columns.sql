-- Change date columns to date data-type

UPDATE clears
SET catch = TO_DATE(LEFT(catch, 10), 'yyyy-mm-dd')

UPDATE course_meta
SET catch = TO_DATE(LEFT(catch, 10), 'yyyy-mm-dd')

UPDATE courses
SET creation = TO_DATE(LEFT(creation, 10), 'yyyy-mm-dd')

UPDATE likes
SET catch = TO_DATE(LEFT(catch, 10), 'yyyy-mm-dd')

UPDATE plays 
SET catch = TO_DATE(LEFT(catch, 10), 'yyyy-mm-dd')

UPDATE records
SET catch = TO_DATE(LEFT(catch, 10), 'yyyy-mm-dd')