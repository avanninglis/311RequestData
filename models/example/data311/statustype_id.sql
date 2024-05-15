{{
    config (
        materialized='table'
    )
}}

WITH statustype_cte AS
(
    SELECT DISTINCT
        status
        FROM public.raw2
)
