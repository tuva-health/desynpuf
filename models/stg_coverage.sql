{{ config(materialized='view') }}

with elig_months as (
select
    desynpuf_id
,   sum(bene_hi_cvrage_tot_mons) as tot
from {{ ref('src_beneficiary_summary') }}
group by 1
)

select
    desynpuf_id as patient_id
,   to_date('20080101','YYYYMMDD') as coverage_start_date
,   case
        when tot = 1 then to_date('20080131','YYYYMMDD')
        when tot = 2 then to_date('20080229','YYYYMMDD')
        when tot = 3 then to_date('20080331','YYYYMMDD')
        when tot = 4 then to_date('20080430','YYYYMMDD')
        when tot = 5 then to_date('20080531','YYYYMMDD')
        when tot = 6 then to_date('20080630','YYYYMMDD')
        when tot = 7 then to_date('20080731','YYYYMMDD')
        when tot = 8 then to_date('20080831','YYYYMMDD')
        when tot = 9 then to_date('20080930','YYYYMMDD')
        when tot = 10 then to_date('20081031','YYYYMMDD')
        when tot = 11 then to_date('20081130','YYYYMMDD')
        when tot = 12 then to_date('20081231','YYYYMMDD')
        when tot = 13 then to_date('20090131','YYYYMMDD')
        when tot = 14 then to_date('20090228','YYYYMMDD')
        when tot = 15 then to_date('20090331','YYYYMMDD')
        when tot = 16 then to_date('20090430','YYYYMMDD')
        when tot = 17 then to_date('20090531','YYYYMMDD')
        when tot = 18 then to_date('20090630','YYYYMMDD')
        when tot = 19 then to_date('20090731','YYYYMMDD')
        when tot = 20 then to_date('20090831','YYYYMMDD')
        when tot = 21 then to_date('20090930','YYYYMMDD')
        when tot = 22 then to_date('20091031','YYYYMMDD')
        when tot = 23 then to_date('20091130','YYYYMMDD')
        when tot = 24 then to_date('20091231','YYYYMMDD')
        when tot = 25 then to_date('20100131','YYYYMMDD')
        when tot = 26 then to_date('20100228','YYYYMMDD')
        when tot = 27 then to_date('20100331','YYYYMMDD')
        when tot = 28 then to_date('20100430','YYYYMMDD')
        when tot = 29 then to_date('20100531','YYYYMMDD')
        when tot = 30 then to_date('20100630','YYYYMMDD')
        when tot = 31 then to_date('20100731','YYYYMMDD')
        when tot = 32 then to_date('20100831','YYYYMMDD')
        when tot = 33 then to_date('20100930','YYYYMMDD')
        when tot = 34 then to_date('20101031','YYYYMMDD')
        when tot = 35 then to_date('20101130','YYYYMMDD')
        when tot = 36 then to_date('20101231','YYYYMMDD')
    end coverage_end_date
,   'Medicare FFS' as primary_payer
,   'Medicare' as payer_type
from elig_months 