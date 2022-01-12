
{{ config(materialized='view') }}

select 
    cast(desynpuf_id as string) as desynpuf_id
,   to_date(bene_birth_dt,'YYYYMMDD') as bene_birth_dt
,   to_date(bene_death_dt,'YYYYMMDD') as bene_death_dt
,   cast(bene_sex_ident_cd as string) as bene_sex_ident_cd
,   cast(bene_race_cd as string) as bene_race_cd
,   cast(bene_esrd_ind as string) as bene_esrd_ind
,   cast(sp_state_code as string) as sp_state_code
,   cast(bene_county_cd as string) as bene_county_cd
,   cast(bene_hi_cvrage_tot_mons as int) as bene_hi_cvrage_tot_mons
,   cast(bene_smi_cvrage_tot_mons as int) as bene_smi_cvrage_tot_mons
,   cast(bene_hmo_cvrage_tot_mons as int) as bene_hmo_cvrage_tot_mons
,   cast(plan_cvrg_mos_num as int) as plan_cvrg_mos_num
,   cast(sp_alzhdmta as int) as sp_alzhdmta
,   cast(sp_chf as int) as sp_chf
,   cast(sp_chrnkidn as int) as sp_chrnkidn
,   cast(sp_cncr as int) as sp_cncr
,   cast(sp_copd as int) as sp_copd
,   cast(sp_depressn as int) as sp_depressn
,   cast(sp_diabetes as int) as sp_diabetes
,   cast(sp_ischmcht as int) as sp_ischmcht
,   cast(sp_osteoprs as int) as sp_osteoprs
,   cast(sp_ra_oa as int) as sp_ra_oa
,   cast(sp_strketia as int) as sp_strketia
,   cast(medreimb_ip as number) as medreimb_ip
,   cast(benres_ip as number) as benres_ip
,   cast(pppymt_ip as number) as pppymt_ip
,   cast(medreimb_op as number) as medreimb_op
,   cast(benres_op as number) as benres_op
,   cast(pppymt_op as number) as pppymt_op
,   cast(medreimb_car as number) as medreimb_car
,   cast(benres_car as number) as benres_car
,   cast(pppymt_car as number) as pppymt_car
from {{ var('beneficiary_summary') }}