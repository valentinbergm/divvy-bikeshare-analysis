-- =================================================================================
-- SCRIPT 2: FINAL ANALYTICAL QUERIES
-- Purpose: Aggregate the cleaned data to answer all key business questions.
-- These are the queries whose results were exported for Tableau.
-- =================================================================================

-- Query 1: Overall Usage Comparison (for 01_Overall_UsageComparison.csv)
SELECT member_casual, COUNT(*) AS total_rides, AVG(ride_length_minutes) AS avg_ride_duration_mins
FROM trips_cleaned GROUP BY member_casual;

-- Query 2: Usage by Day of the Week (for 02_DailyUsageByDayOfWeek.csv)
SELECT day_of_week, member_casual, COUNT(*) AS total_rides
FROM trips_cleaned GROUP BY day_of_week, member_casual ORDER BY FIELD(day_of_week, 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday');

-- Query 3: Usage by Month (for 03_MonthlyUsageByMonth.csv)
SELECT month, member_casual, COUNT(*) AS total_rides
FROM trips_cleaned GROUP BY month, member_casual ORDER BY STR_TO_DATE(CONCAT('2024-', month, '-01'), '%Y-%M-%d');

-- Query 4: Top 10 Start Stations Overall (for 04_TopStationsOverall.csv)
SELECT start_station_name, COUNT(*) AS total_rides
FROM trips_cleaned GROUP BY start_station_name ORDER BY total_rides DESC LIMIT 10;

-- Query 5: Bike Type Preference (for 05_BikeTypePreference.csv)
SELECT rideable_type, member_casual, COUNT(*) AS total_rides
FROM trips_cleaned GROUP BY rideable_type, member_casual;

-- Query 6: Trip Categorization by Duration (for 06_TripDurationCategorization.csv)
SELECT CASE WHEN ride_length_minutes <= 10 THEN 'Quick (0-10 min)' WHEN ride_length_minutes > 10 AND ride_length_minutes <= 30 THEN 'Short (10-30 min)' WHEN ride_length_minutes > 30 AND ride_length_minutes <= 60 THEN 'Mid (30-60 min)' ELSE 'Long (>60 min)' END AS trip_category, member_casual, COUNT(*) AS total_rides
FROM trips_cleaned GROUP BY trip_category, member_casual ORDER BY MIN(ride_length_minutes);

-- Query 7: Usage by Day of Week & Season (for 07_SeasonalUsageByDayAndSeason.csv)
SELECT member_casual, day_of_week, CASE WHEN month IN ('March', 'April', 'May') THEN 'Spring' WHEN month IN ('June', 'July', 'August') THEN 'Summer' WHEN month IN ('September', 'October', 'November') THEN 'Autumn' ELSE 'Winter' END AS season, COUNT(*) AS total_rides
FROM trips_cleaned GROUP BY member_casual, day_of_week, season ORDER BY member_casual, FIELD(day_of_week, 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'), FIELD(season, 'Spring', 'Summer', 'Autumn', 'Winter');

-- Query 8: Average Distance in Kilometers (for 08_DistanceAverageInKilometers.csv)
SELECT member_casual, AVG(6371 * 2 * ASIN(SQRT(POWER(SIN(RADIANS(end_lat - start_lat) / 2), 2) + COS(RADIANS(start_lat)) * COS(RADIANS(end_lat)) * POWER(SIN(RADIANS(end_lng - start_lng) / 2), 2)))) AS avg_distance_km
FROM trips_cleaned WHERE start_lat <> 0 AND start_lng <> 0 AND end_lat <> 0 AND end_lng <> 0 GROUP BY member_casual;

-- Query 9: Central Tendency & Dispersion (for 09_StatisticsCentralTendencyAnd.csv)
SELECT T1.member_casual, AVG(T1.ride_length_minutes) AS avg_duration, STDDEV(T1.ride_length_minutes) AS stddev_duration, (SELECT ride_length_minutes FROM trips_cleaned WHERE member_casual = T1.member_casual ORDER BY ride_length_minutes LIMIT 1 OFFSET (SELECT FLOOR(COUNT(*) / 2) FROM trips_cleaned WHERE member_casual = T1.member_casual)) AS median_duration
FROM trips_cleaned AS T1 GROUP BY T1.member_casual;

-- Query 10: Proportional Bike Type Preference (for 10_BikePreferenceProportional.csv)
SELECT member_casual, rideable_type, COUNT(*) AS total_rides, (COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (PARTITION BY member_casual)) AS percentage_of_total
FROM trips_cleaned GROUP BY member_casual, rideable_type;

-- Query 11: Top 25 Station-User Combinations (for 11_CasualStationsTopWithCoordin.csv)
-- This query generates the data used for the map visualization.
SELECT
    start_station_name,
    member_casual,
    COUNT(*) AS total_rides,
    AVG(start_lat) AS avg_latitude,
    AVG(start_lng) AS avg_longitude
FROM
    trips_cleaned
GROUP BY
    start_station_name,
    member_casual
ORDER BY
    total_rides DESC
LIMIT 25;