{{ config(materialized='view') }}

with union_cte as (
select *
from {{ ref('inpatient_procedures') }}

union

select *
from {{ ref('outpatient_procedures') }}
)

select
    a.encounter_id
,   a.icd9pcs
,   b.icd10pcs
from union_cte a
left join {{ ref('icd9toicd10pcsgem') }} b
    on cast(a.icd9pcs as string) = cast(b.icd9pcs as string)
where a.icd9pcs is not null