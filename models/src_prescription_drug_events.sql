
{{ config(materialized='view') }}

select
    cast(desynpuf_id as string) as desynpuf_id
,   cast(pde_id as string) as pde_id
,   to_date(srvc_dt,'YYYYMMDD') as srvc_dt
,   cast(prod_srvc_id as string) as prod_srvc_id
,   cast(qty_dspnsd_num as int) as qty_dspnsd_num
,   cast(days_suply_num as int) as days_suply_num
,   cast(ptnt_pay_amt as number) as ptnt_pay_amt
,   cast(tot_rx_cst_amt as number) as tot_rx_cst_amt
from {{ var('prescription_drug_events') }}