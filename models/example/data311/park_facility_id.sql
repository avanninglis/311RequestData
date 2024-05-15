{{
    config (
        materialized='table'
    )
}}

WITH park_facility_name_cte AS
(
    SELECT DISTINCT
        park_facility_name
        FROM public.raw2
)