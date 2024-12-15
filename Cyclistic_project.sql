
SELECT COUNT(*) AS total_rows_2019
FROM `cyclistic.2019Q1`;
SELECT COUNT(*) AS total_rows_2020
FROM `cyclistic.2020Q1`;


SELECT COUNT(DISTINCT bikeid) AS distinct_bikes_2019
FROM `cyclistic.2019Q1`;
SELECT COUNT(DISTINCT ride_id) AS distinct_bikes_2020
FROM `cyclistic.2020Q1`;

SELECT 
  MAX(TIMESTAMP_DIFF(end_time, start_time, HOUR)) AS max_ride_length_2019, 
  MIN(TIMESTAMP_DIFF(end_time, start_time, HOUR)) AS min_ride_length_2019,  
  AVG(TIMESTAMP_DIFF(end_time, start_time, HOUR)) AS avg_ride_length_2019  FROM `cyclistic.2019Q1`;
SELECT
  MAX(TIMESTAMP_DIFF(ended_at, started_at, HOUR)) AS max_ride_length_2020, 
  MIN(TIMESTAMP_DIFF(ended_at, started_at, HOUR)) AS min_ride_length_2020,  
  AVG(TIMESTAMP_DIFF(ended_at, started_at, HOUR)) AS avg_ride_length_2020 FROM `cyclistic.2020Q1`;

SELECT 
  `cyclistic.2019Q1`.bikeid AS ride_id_2019,
  `cyclistic.2019Q1`.start_time AS started_at_2019,
  `cyclistic.2019Q1`.end_time AS ended_at_2019,
  `cyclistic.2019Q1`.tripduration AS trip_duration_2019,
  `cyclistic.2020Q1`.started_at AS started_at_2020,
  `cyclistic.2020Q1`.ended_at AS ended_at_2020,
  `cyclistic.2020Q1`.ride_id AS ride_id_2020,
  `cyclistic.2020Q1`.ride_length_in_hours AS trip_duration_2020
FROM `cyclistic.2019Q1`
LEFT JOIN `cyclistic.2020Q1`
  ON CAST(`cyclistic.2019Q1`.bikeid AS STRING) = CAST(`cyclistic.2020Q1`.ride_id AS STRING);

SELECT 
  COUNT(`cyclistic.2019Q1`.bikeid) AS total_rides_2019,
  COUNT(`cyclistic.2020Q1`.ride_id) AS total_rides_2020
FROM `cyclistic.2019Q1`
full JOIN `cyclistic.2020Q1` 

  ON CAST(`cyclistic.2019Q1`.bikeid AS STRING) = CAST(`cyclistic.2020Q1`.ride_id AS STRING);

