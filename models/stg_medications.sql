{{ config(materialized='table') }}

select
    desynpuf_id as patient_id
,   srvc_dt as fill_date
,   prod_srvc_id as NDC
,   qty_dspnsd_num as quantity
,   days_suply_num as days_supply
,   null as refills
,   null as strength
,   null as form
,   tot_rx_cst_amt as rx_cost
from {{ ref('src_prescription_drug_events') }}