{{ config(materialized='view') }}

with patients_temp as (
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
,   bene_birth_dt as birth_date
,   bene_death_dt as death_date
,   null as address
,   null as city
,   null as state
,   null as zip_code
from {{ ref('src_beneficiary_summary') }}
)

, patients_no_death as (
select distinct 
    patient_id
,   gender_code
,   race_code
,   birth_date
,   death_date
,   address
,   city
,   state
,   zip_code
from patients_temp
where death_date is null
)

, patients_yes_death as (
select distinct 
    patient_id
,   gender_code
,   race_code
,   birth_date
,   death_date
,   address
,   city
,   state
,   zip_code
from patients_temp
where death_date is not null
)

select
    a.patient_id
,   a.gender_code
,   a.race_code
,   a.birth_date
,   b.death_date
,   a.address
,   a.city
,   a.state
,   a.zip_code
from patients_no_death a
left join patients_yes_death b
    on a.patient_id = b.patient_id
    
union all

select 
    a.patient_id
,   a.gender_code
,   a.race_code
,   a.birth_date
,   a.death_date
,   a.address
,   a.city
,   a.state
,   a.zip_code
from patients_yes_death a
left join patients_no_death b
    on a.patient_id = b.patient_id
where b.patient_id is null
