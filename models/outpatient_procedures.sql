{{ config(materialized='view') }}

select
    clm_id as encounter_id
,   icd9_prcdr_cd_1 as icd9pcs  
from {{ ref('src_outpatient_claims') }}
where segment = 1

union

select
    clm_id as encounter_id
,   icd9_prcdr_cd_2 as icd9pcs
from {{ ref('src_outpatient_claims') }}
where segment = 1

union

select
    clm_id as encounter_id
,   icd9_prcdr_cd_3 as icd9pcs
from {{ ref('src_outpatient_claims') }}
where segment = 1

union

select
    clm_id as encounter_id
,   icd9_prcdr_cd_4 as icd9pcs 
from {{ ref('src_outpatient_claims') }}
where segment = 1

union

select
    clm_id as encounter_id
,   icd9_prcdr_cd_5 as icd9pcs  
from {{ ref('src_outpatient_claims') }}
where segment = 1

union

select
    clm_id as encounter_id
,   icd9_prcdr_cd_6 as icd9pcs  
from {{ ref('src_outpatient_claims') }}
where segment = 1