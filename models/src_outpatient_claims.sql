
{{ config(materialized='view') }}

select
    cast(desynpuf_id as string) as desynpuf_id
,   cast(clm_id as string) as clm_id
,   cast(segment as string) as segment
,   to_date(clm_from_dt,'YYYYMMDD') as clm_from_dt
,   to_date(clm_thru_dt,'YYYYMMDD') as clm_thru_dt
,   cast(prvdr_num as string) as prvdr_num
,   cast(clm_pmt_amt as number) as clm_pmt_amt
,   cast(NCH_PRMRY_PYR_CLM_PD_AMT as number) as nch_prmry_pyr_clm_pd_amt
,   cast(at_physn_npi as string) as at_physn_npi
,   cast(op_physn_npi as string) as op_physn_npi
,   cast(ot_physn_npi as string) as ot_physn_npi
,   cast(nch_bene_blood_ddctbl_lblty_am as number) as nch_bene_blood_ddctbl_lblty_am
,   cast(icd9_dgns_cd_1 as string) as icd9_dgns_cd_1
,   cast(icd9_dgns_cd_2 as string) as icd9_dgns_cd_2
,   cast(icd9_dgns_cd_3 as string) as icd9_dgns_cd_3
,   cast(icd9_dgns_cd_4 as string) as icd9_dgns_cd_4
,   cast(icd9_dgns_cd_5 as string) as icd9_dgns_cd_5
,   cast(icd9_dgns_cd_6 as string) as icd9_dgns_cd_6
,   cast(icd9_dgns_cd_7 as string) as icd9_dgns_cd_7
,   cast(icd9_dgns_cd_8 as string) as icd9_dgns_cd_8
,   cast(icd9_dgns_cd_9 as string) as icd9_dgns_cd_9
,   cast(icd9_dgns_cd_10 as string) as icd9_dgns_cd_10
,   cast(icd9_prcdr_cd_1 as string) as icd9_prcdr_cd_1
,   cast(icd9_prcdr_cd_2 as string) as icd9_prcdr_cd_2
,   cast(icd9_prcdr_cd_3 as string) as icd9_prcdr_cd_3
,   cast(icd9_prcdr_cd_4 as string) as icd9_prcdr_cd_4
,   cast(icd9_prcdr_cd_5 as string) as icd9_prcdr_cd_5
,   cast(icd9_prcdr_cd_6 as string) as icd9_prcdr_cd_6
,   cast(nch_bene_ptb_ddctbl_amt as number) as nch_bene_ptb_ddctbl_amt
,   cast(nch_bene_ptb_coinsrnc_amt as number) as nch_bene_ptb_coinsrnc_amt
,   cast(admtng_icd9_dgns_cd as string) as admtng_icd9_dgns_cd
,   cast(hcpcs_cd_1 as string) as hcpcs_cd_1
,   cast(hcpcs_cd_2 as string) as hcpcs_cd_2
,   cast(hcpcs_cd_3 as string) as hcpcs_cd_3
,   cast(hcpcs_cd_4 as string) as hcpcs_cd_4
,   cast(hcpcs_cd_5 as string) as hcpcs_cd_5
,   cast(hcpcs_cd_6 as string) as hcpcs_cd_6
,   cast(hcpcs_cd_7 as string) as hcpcs_cd_7
,   cast(hcpcs_cd_8 as string) as hcpcs_cd_8
,   cast(hcpcs_cd_9 as string) as hcpcs_cd_9
,   cast(hcpcs_cd_10 as string) as hcpcs_cd_10
,   cast(hcpcs_cd_11 as string) as hcpcs_cd_11
,   cast(hcpcs_cd_12 as string) as hcpcs_cd_12
,   cast(hcpcs_cd_13 as string) as hcpcs_cd_13
,   cast(hcpcs_cd_14 as string) as hcpcs_cd_14
,   cast(hcpcs_cd_15 as string) as hcpcs_cd_15
,   cast(hcpcs_cd_16 as string) as hcpcs_cd_16
,   cast(hcpcs_cd_17 as string) as hcpcs_cd_17
,   cast(hcpcs_cd_18 as string) as hcpcs_cd_18
,   cast(hcpcs_cd_19 as string) as hcpcs_cd_19
,   cast(hcpcs_cd_20 as string) as hcpcs_cd_20
,   cast(hcpcs_cd_21 as string) as hcpcs_cd_21
,   cast(hcpcs_cd_22 as string) as hcpcs_cd_22
,   cast(hcpcs_cd_23 as string) as hcpcs_cd_23
,   cast(hcpcs_cd_24 as string) as hcpcs_cd_24
,   cast(hcpcs_cd_25 as string) as hcpcs_cd_25
,   cast(hcpcs_cd_26 as string) as hcpcs_cd_26
,   cast(hcpcs_cd_27 as string) as hcpcs_cd_27
,   cast(hcpcs_cd_28 as string) as hcpcs_cd_28
,   cast(hcpcs_cd_29 as string) as hcpcs_cd_29
,   cast(hcpcs_cd_30 as string) as hcpcs_cd_30
,   cast(hcpcs_cd_31 as string) as hcpcs_cd_31
,   cast(hcpcs_cd_32 as string) as hcpcs_cd_32
,   cast(hcpcs_cd_33 as string) as hcpcs_cd_33
,   cast(hcpcs_cd_34 as string) as hcpcs_cd_34
,   cast(hcpcs_cd_35 as string) as hcpcs_cd_35
,   cast(hcpcs_cd_36 as string) as hcpcs_cd_36
,   cast(hcpcs_cd_37 as string) as hcpcs_cd_37
,   cast(hcpcs_cd_38 as string) as hcpcs_cd_38
,   cast(hcpcs_cd_39 as string) as hcpcs_cd_39
,   cast(hcpcs_cd_40 as string) as hcpcs_cd_40
,   cast(hcpcs_cd_41 as string) as hcpcs_cd_41
,   cast(hcpcs_cd_42 as string) as hcpcs_cd_42
,   cast(hcpcs_cd_43 as string) as hcpcs_cd_43
,   cast(hcpcs_cd_44 as string) as hcpcs_cd_44
,   cast(hcpcs_cd_45 as string) as hcpcs_cd_45
from {{ var('outpatient_claims') }}