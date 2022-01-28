{{ config(materialized='view') }}

select
    encounter_id
,   'ICD-10-PCS' as code_type
,   icd10pcs as procedure_code 
from {{ ref('procedures_conversion') }}