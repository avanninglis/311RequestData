WITH agencytype_id_cte AS
(
    SELECT DISTINCT
        agency_name
    FROM public.raw
)

SELECT * FROM agencytype_id_cte;
