{{ config(materialized='view') }}

select
    encounter_id
,   'ICD-10-CM' as code_type
,   icd10cm as diagnosis_code
,   diagnosis_rank
,   null as present_on_admission_code   
from {{ ref('diagnoses_conversion')}}