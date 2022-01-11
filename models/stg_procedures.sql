{{ config(materialized='table') }}

with union_cte as (
select *
from {{ ref('inpatient_procedures') }}

union

select *
from {{ ref('outpatient_procedures') }}
)

select
    encounter_id
,   b.icd10pcs as procedure_code 
from union_cte a
left join {{ ref('icd9toicd10pcsgem') }} b
    on cast(a.procedure_code as string) = cast(b.icd9pcs as string)
where a.procedure_code is not null