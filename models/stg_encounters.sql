{{ config(materialized='view') }}

select
    clm_id as encounter_id
,   desynpuf_id as patient_id
,   clm_admsn_dt as encounter_start_date
,   nch_bene_dschrg_dt as encounter_end_date
,   'Acute Inpatient' as encounter_type
,   null as admit_type_code
,   null as admit_source_code
,   null as discharge_status_code
,   at_physn_npi as attending_provider_npi
,   prvdr_num as facility_npi
,   clm_drg_cd as drg
,   clm_pmt_amt as paid_amount
from {{ ref('src_inpatient_claims') }}
where segment = 1

union

select
    clm_id as encounter_id
,   desynpuf_id as patient_id
,   clm_from_dt as encounter_start_date
,   clm_thru_dt as encounter_end_date
,   'Outpatient' as encounter_type
,   null as admit_type_code
,   null as admit_source_code
,   null as discharge_status_code
,   at_physn_npi as attending_provider_npi
,   prvdr_num as facility_npi
,   null as drg
,   clm_pmt_amt as paid_amount
from {{ ref('src_outpatient_claims') }}
where segment = 1

union

select
    clm_id as encounter_id
,   desynpuf_id as patient_id
,   clm_from_dt as encounter_start_date
,   clm_thru_dt as encounter_end_date
,   'Physician' as encounter_type
,   null as admit_type_code
,   null as admit_source_code
,   null as discharge_status_code
,   prf_physn_npi_1 as attending_provider_npi
,   null as facility_npi
,   null as drg
,   line_nch_pmt_amt_1 as paid_amount
from {{ ref('src_carrier_claims') }}