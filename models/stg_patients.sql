
{{ config(materialized='view') }}

select distinct
    desynpuf_id as patient_id
,   case
        when bene_sex_ident_cd = 1 then 'Male'
        when bene_sex_ident_cd = 2 then 'Female'
        else 'Unknown'
    end gender_code
,   case
        when bene_race_cd = 1 then 'White'
        when bene_race_cd = 2 then 'Black'
        when bene_race_cd = 3 then 'Others'
        when bene_race_cd = 5 then 'Hispanic'
        else 'Unknown'
    end race_code
,   to_date(bene_birth_dt,'YYYYMMDD') as birth_date
,   to_date(bene_death_dt,'YYYYMMDD') as death_date
,   null as address
,   null as city
,   null as state
,   null as zip_code
from desynpuf.public.beneficiary_summary