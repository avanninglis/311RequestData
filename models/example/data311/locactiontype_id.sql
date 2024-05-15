{{
    config (
        materialized='table'
    )
}}

WITH locationtype_cte AS
(
    SELECT DISTINCT
        location_type
        FROM public.raw2
)
