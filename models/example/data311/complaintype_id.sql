{{
    config (
        materialized='table'
    )
}}

WITH complaintype_cte AS
(
    SELECT DISTINCT
        complaint_type
        FROM public.raw2
)
