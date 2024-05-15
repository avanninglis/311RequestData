
WITH channel_id_cte AS
(
    SELECT DISTINCT
        open_data_channel_type
    FROM public.raw
)


SELECT * FROM channel_id_cte;