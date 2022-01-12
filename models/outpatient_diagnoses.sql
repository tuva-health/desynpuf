
{{ config(materialized='view') }}

select
    clm_id as encounter_id
,   icd9_dgns_cd_1 as diagnosis_code
,   1 as diagnosis_rank
,   null as present_on_admission_code   
from {{ ref('src_outpatient_claims') }}
where segment = 1

union

select
    clm_id as encounter_id
,   icd9_dgns_cd_2 as diagnosis_code
,   2 as diagnosis_rank
,   null as present_on_admission_code   
from {{ ref('src_outpatient_claims') }}
where segment = 1

union

select
    clm_id as encounter_id
,   icd9_dgns_cd_3 as diagnosis_code
,   3 as diagnosis_rank
,   null as present_on_admission_code   
from {{ ref('src_outpatient_claims') }}
where segment = 1

union

select
    clm_id as encounter_id
,   icd9_dgns_cd_4 as diagnosis_code
,   4 as diagnosis_rank
,   null as present_on_admission_code   
from {{ ref('src_outpatient_claims') }}
where segment = 1

union

select
    clm_id as encounter_id
,   icd9_dgns_cd_5 as diagnosis_code
,   5 as diagnosis_rank
,   null as present_on_admission_code   
from {{ ref('src_outpatient_claims') }}
where segment = 1

union

select
    clm_id as encounter_id
,   icd9_dgns_cd_6 as diagnosis_code
,   6 as diagnosis_rank
,   null as present_on_admission_code   
from {{ ref('src_outpatient_claims') }}
where segment = 1

union

select
    clm_id as encounter_id
,   icd9_dgns_cd_7 as diagnosis_code
,   7 as diagnosis_rank
,   null as present_on_admission_code   
from {{ ref('src_outpatient_claims') }}
where segment = 1

union

select
    clm_id as encounter_id
,   icd9_dgns_cd_8 as diagnosis_code
,   8 as diagnosis_rank
,   null as present_on_admission_code   
from {{ ref('src_outpatient_claims') }}
where segment = 1

union

select
    clm_id as encounter_id
,   icd9_dgns_cd_9 as diagnosis_code
,   9 as diagnosis_rank
,   null as present_on_admission_code   
from {{ ref('src_outpatient_claims') }}
where segment = 1

union

select
    clm_id as encounter_id
,   icd9_dgns_cd_10 as diagnosis_code
,   10 as diagnosis_rank
,   null as present_on_admission_code   
from {{ ref('src_outpatient_claims') }}
where segment = 1