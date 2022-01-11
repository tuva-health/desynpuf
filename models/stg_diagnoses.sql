{{ config(materialized='table') }}

with union_cte as (
select *
from {{ ref('inpatient_diagnoses') }}

union

select *
from {{ ref('outpatient_diagnoses') }}

union

select *
from {{ ref('professional_diagnoses') }}
)

select
    encounter_id
,   b.icd10cm as diagnosis_code
,   c.short_description as description
,   diagnosis_rank
,   null as present_on_admission_code   
from union_cte a
left join {{ ref('icd9toicd10cmgem') }} b
    on a.diagnosis_code = b.icd9cm
left join {{ ref('icd_10_cm')}} c
    on b.icd10cm = c.code
where a.diagnosis_code is not null