-- Overall Question: How can we covert casual riders into members
# Calculate the number of causual riders and members

SELECT
	member_casual,
	count(member_casual) AS frequency
FROM
	all_cycle_data
GROUP BY
	member_casual;

# Calculate what days tend to have the most use?
SELECT
	day_of_week,
	count(day_of_week) AS frequency
FROM
	all_cycle_data
GROUP BY
	day_of_week
ORDER BY
	frequency DESC;

# What days are most frequented by each user type
SELECT
	member_casual,
	day_of_week,
	count(day_of_week) AS frequency
FROM
	all_cycle_data
GROUP BY
	member_casual,
	day_of_week
ORDER BY
	frequency DESC;

-- What sort of ride services do users use?
# Calculate what types of bikes are used

SELECT
	rideable_type,
	count(rideable_type) AS amount
FROM
	all_cycle_data
GROUP BY
	rideable_type
ORDER BY
	amount DESC;

# What percentage do the bikes make up of all 2021 sales
-- First CTE
WITH CBike (
	CBikesPercent
) AS (
	SELECT
		count(*) / (
			SELECT
				count(*)
			FROM
				all_cycle_data) * 100 AS CBikesPercent
		FROM
			all_cycle_data
		WHERE
			rideable_type = "classic_bike"
),
-- Second CTE
EBike (
	EBikesPercent
) AS (
	SELECT
		count(*) / (
			SELECT
				count(*)
			FROM
				all_cycle_data) * 100 AS EBikesPercent
		FROM
			all_cycle_data
		WHERE
			rideable_type = "electric_bike"
),
-- Third CTE
DBike (
	DBikesPercent
) AS (
	SELECT
		count(*) / (
			SELECT
				count(*)
			FROM
				all_cycle_data) * 100 AS DBikesPercent
		FROM
			all_cycle_data
		WHERE
			rideable_type = "docked_bike"
)
-- Find all percent
SELECT
	CBikesPercent, EBikesPercent, DBikesPercent
FROM
	CBike
	CROSS JOIN EBike
	CROSS JOIN DBike;

# Find what bikes are most preferred by casual users and members
SELECT
	member_casual,
	rideable_type,
	count(rideable_type) AS ride_type
FROM
	all_cycle_data
GROUP BY
	member_casual,
	rideable_type
ORDER BY
	ride_type DESC;

# Most popular pick-up stations by member type
SELECT
	member_casual,
	start_station_name,
	count(start_station_name) AS popularity
FROM
	all_cycle_data
GROUP BY
	member_casual,
	start_station_name
ORDER BY
	popularity DESC;
