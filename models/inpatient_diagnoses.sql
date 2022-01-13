
{{ config(materialized='view') }}

select
    clm_id as encounter_id
,   icd9_dgns_cd_1 as icd9cm
,   1 as diagnosis_rank
,   null as present_on_admission_code   
from {{ ref('src_inpatient_claims') }}
where segment = 1

union

select
    clm_id as encounter_id
,   icd9_dgns_cd_2 as icd9cm
,   2 as diagnosis_rank
,   null as present_on_admission_code   
from {{ ref('src_inpatient_claims') }}
where segment = 1

union

select
    clm_id as encounter_id
,   icd9_dgns_cd_3 as icd9cm
,   3 as diagnosis_rank
,   null as present_on_admission_code   
from {{ ref('src_inpatient_claims') }}
where segment = 1

union

select
    clm_id as encounter_id
,   icd9_dgns_cd_4 as icd9cm
,   4 as diagnosis_rank
,   null as present_on_admission_code   
from {{ ref('src_inpatient_claims') }}
where segment = 1

union

select
    clm_id as encounter_id
,   icd9_dgns_cd_5 as icd9cm
,   5 as diagnosis_rank
,   null as present_on_admission_code   
from {{ ref('src_inpatient_claims') }}
where segment = 1

union

select
    clm_id as encounter_id
,   icd9_dgns_cd_6 as icd9cm
,   6 as diagnosis_rank
,   null as present_on_admission_code   
from {{ ref('src_inpatient_claims') }}
where segment = 1

union

select
    clm_id as encounter_id
,   icd9_dgns_cd_7 as icd9cm
,   7 as diagnosis_rank
,   null as present_on_admission_code   
from {{ ref('src_inpatient_claims') }}
where segment = 1

union

select
    clm_id as encounter_id
,   icd9_dgns_cd_8 as icd9cm
,   8 as diagnosis_rank
,   null as present_on_admission_code   
from {{ ref('src_inpatient_claims') }}
where segment = 1

union

select
    clm_id as encounter_id
,   icd9_dgns_cd_9 as icd9cm
,   9 as diagnosis_rank
,   null as present_on_admission_code   
from {{ ref('src_inpatient_claims') }}
where segment = 1

union

select
    clm_id as encounter_id
,   icd9_dgns_cd_10 as icd9cm
,   10 as diagnosis_rank
,   null as present_on_admission_code   
from {{ ref('src_inpatient_claims') }}
where segment = 1