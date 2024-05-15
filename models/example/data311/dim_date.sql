{{
    config (
        materialized='table'
    )
}}

WITH date_cte AS
(
    SELECT DISTINCT CAST (created_date AS timestamp) AS date_value FROM public.raw2
    UNION
    SELECT DISTINCT CAST (resolution_action_updated_date AS timestamp)  AS date_value FROM public.raw2
    UNION
    SELECT DISTINCT CAST (closed_date AS timestamp)  AS date_value FROM public.raw2
    UNION
    SELECT DISTINCT CAST (due_date AS timestamp)  AS date_value FROM public.raw2
)
SELECT
    CAST(EXTRACT(YEAR FROM date_value) AS INTEGER) AS year_number,
    EXTRACT(month FROM date_value) AS month_number,
    EXTRACT(day FROM date_value) AS day_number,
    EXTRACT(hour FROM date_value) AS hour_number,
    EXTRACT(minute FROM date_value) AS minutes_number,
    EXTRACT(second FROM date_value) AS seconds_number,
    T0_CHAR(date_value, 'Month') AS monthName,
    EXTRACT(week FROM date_value) AS weekOfYear,
    FLOOR((EXTRACT(day FROM date_value)-1)/7) +1 AS weekOfMonth,
    TO_CHAR(date_value, 'Day') AS dayName,
    EXTRACT(week FROM date_value) AS weekOfYear
    
FROM date_cte