{{ config(materialized='view') }}

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
,   a.icd9cm
,   b.icd10cm
,   diagnosis_rank  
from union_cte a
left join {{ ref('icd9toicd10cmgem') }} b
    on a.icd9cm = b.icd9cm
where a.icd9cm is not null