{{
    config (
        materialized='table'
    )
}}

WITH location_id_cte AS
(
    SELECT DISTINCT
        location_type
        FROM public.raw2
)
