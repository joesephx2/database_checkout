--#1 All of the vacation destinations.
SELECT name FROM destinations;

--#2 All destinations where you can swim at the beach.
SELECT name FROM destinations WHERE has_beach = TRUE;

--#3 All destinations where the average temperature is over 60 degrees.
SELECT name FROM destinations WHERE average_temp > 60;

--#4 All destinations where you can swim at the beach AND go to the mountains.
SELECT name FROM destinations WHERE has_beach = TRUE AND has_mountains = TRUE;

--#5 All destinations where flights cost less than $500 and you can hike in the mountains
SELECT name FROM destinations WHERE has_mountains = TRUE AND cost_of_flight < 500;

--#6 Add an entry for The Bahamas, where the average temperature is 78, it has beaches but no mountains, and the flights cost $345.
INSERT INTO destinations VALUES (DEFAULT, 'Bahamas', 78, 345, TRUE, FALSE);

--#7 Turns out, the cost of flights to New Zealand has increased! Update New Zealand's entry for flight cost to $1000.
UPDATE destinations
SET cost_of_flight = 1000
WHERE name = 'New Zealand';

--#8 Turns out, Minnesota isn't a vacation destination. Please delete it from the database.
DELETE FROM destinations WHERE name = 'Minnesota';

--#9 When the data set was written, the author mistakently wrote "England" when they actually meant "Scotland". Please update that entry in the database.
UPDATE destinations
SET name = 'Scotland'
WHERE name = 'England';

--#10 Create a join table that joins the airlines and the destinations tables by correlating which airlines fly to which destinations.
CREATE TABLE airlines_destinations AS
(SELECT airlines.id,
        destinations.id
FROM airlines
INNER JOIN destinations
ON )


