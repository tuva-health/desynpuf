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
,   diagnosis_rank
,   null as present_on_admission_code   
from union_cte a
left join {{ ref('icd9toicd10cmgem') }} b
    on a.diagnosis_code = b.icd9cm
where a.diagnosis_code is not null