{{
    config (
        materialized='table'
    )
}}

WITH community_board_cte AS
(
    SELECT DISTINCT
        community_board
        FROM public.raw2
)
