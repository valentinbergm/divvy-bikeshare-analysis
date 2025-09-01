-- =================================================================================
-- SCRIPT 1: DATA CLEANING & TRANSFORMATION
-- Purpose: Combine all monthly tables into a single master table, then clean it
-- and create a final, analysis-ready table `trips_cleaned`.
-- =================================================================================

-- Step 1: Combine all 13 monthly tables into a single raw table
-- Note: This script assumes the 13 monthly tables (e.g., trips_01_jul_24) have already been loaded.
CREATE TABLE trips_all_year AS
SELECT * FROM trips_01_jul_24 UNION ALL
SELECT * FROM trips_02_aug_24 UNION ALL
SELECT * FROM trips_03_sept_24 UNION ALL
SELECT * FROM trips_04_oct_24 UNION ALL
SELECT * FROM trips_05_nov_24 UNION ALL
SELECT * FROM trips_06_dec_24 UNION ALL
SELECT * FROM trips_07_jan_25 UNION ALL
SELECT * FROM trips_08_feb_25 UNION ALL
SELECT * FROM trips_09_mar_25 UNION ALL
SELECT * FROM trips_10_apr_25 UNION ALL
SELECT * FROM trips_11_may_25 UNION ALL
SELECT * FROM trips_12_jun_25 UNION ALL
SELECT * FROM trips_13_jul_25;

-- Step 2: Create the final, cleaned table from the raw combined data
DROP TABLE IF EXISTS trips_cleaned;
CREATE TABLE trips_cleaned AS
SELECT
    ride_id,
    rideable_type,
    STR_TO_DATE(started_at, '%Y-%m-%d %H:%i:%s') AS started_at,
    STR_TO_DATE(ended_at, '%Y-%m-%d %H:%i:%s') AS ended_at,
    -- Feature Engineering: Create new useful columns
    TIMESTAMPDIFF(MINUTE, STR_TO_DATE(started_at, '%Y-%m-%d %H:%i:%s'), STR_TO_DATE(ended_at, '%Y-%m-%d %H:%i:%s')) AS ride_length_minutes,
    DAYNAME(STR_TO_DATE(started_at, '%Y-%m-%d %H:%i:%s')) AS day_of_week,
    MONTHNAME(STR_TO_DATE(started_at, '%Y-%m-%d %H:%i:%s')) AS month,
    TRIM(start_station_name) AS start_station_name,
    TRIM(end_station_name) AS end_station_name,
    start_lat,
    start_lng,
    end_lat,
    end_lng,
    member_casual
FROM
    trips_all_year
WHERE
    -- Cleaning Conditions: Filter out bad data
    TRIM(start_station_name) IS NOT NULL AND TRIM(start_station_name) <> ''
    AND TRIM(end_station_name) IS NOT NULL AND TRIM(end_station_name) <> ''
    AND end_lat IS NOT NULL AND end_lat <> ''
    -- Filter out trips shorter than 1 minute or longer than 24 hours
    AND TIMESTAMPDIFF(MINUTE, STR_TO_DATE(started_at, '%Y-%m-%d %H:%i:%s'), STR_TO_DATE(ended_at, '%Y-%m-%d %H:%i:%s')) > 1
    AND TIMESTAMPDIFF(MINUTE, STR_TO_DATE(started_at, '%Y-%m-%d %H:%i:%s'), STR_TO_DATE(ended_at, '%Y-%m-%d %H:%i:%s')) < 1440;