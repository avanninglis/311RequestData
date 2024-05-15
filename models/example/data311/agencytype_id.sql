{{
    config (
        materialized='table'
    )
}}

WITH agency_name_cte AS
(
    SELECT DISTINCT
        agency_name
        FROM public.raw2
)

