{{
    config (
        materialized='table'
    )
}}

WITH channelType_cte AS
(
    SELECT DISTINCT
        agency_name
        FROM public.raw2
)
