SELECT * FROM cd.facilities;
SELECT name, membercost FROM cd.facilities;
SELECT * FROM cd.facilities
WHERE membercost > 0;
SELECT facid, name, membercost, monthlymaintenance FROM cd.facilities
WHERE membercost < (monthlymaintenance/50)
ORDER BY membercost DESC
LIMIT 2;
SELECT * FROM cd.facilities
WHERE name LIKE '%Tennis%';
SELECT * FROM cd.facilities
WHERE facid IN (1, 5);
SELECT memid, surname, firstname FROM cd.members
WHERE joindate BETWEEN '2012-09-01' AND '2012-10-01';
SELECT DISTINCT surname FROM cd.members
ORDER BY surname ASC
LIMIT 10;
SELECT joindate FROM cd.members
ORDER BY joindate DESC
LIMIT 1;
SELECT COUNT (guestcost) FROM cd.facilities
WHERE guestcost >= 10;
SELECT facid, SUM(slots) FROM cd.bookings
WHERE starttime > '2012-09-01' AND starttime < '2012-10-01'
GROUP BY facid
ORDER BY SUM(slots) ASC;
SELECT facid, SUM(slots) FROM cd.bookings
GROUP BY facid
HAVING SUM(slots) > 1000
ORDER BY facid ASC;
SELECT starttime, name 
FROM cd.bookings
INNER JOIN cd.facilities ON cd.facilities.facid = cd.bookings.facid
WHERE name LIKE '%Tennis Court%' 
AND starttime BETWEEN '2012-09-21' AND '2012-09-22'
ORDER BY starttime ASC;
SELECT surname, firstname, starttime FROM cd.members
INNER JOIN cd.bookings
ON cd.members.memid = cd.bookings.memid
WHERE surname = 'Farrell' AND firstname = 'David'