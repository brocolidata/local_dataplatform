{{ 
    config(
        materialized='external', 
        location="{{ env_var('DWH_DATA') }}/ods/financial_dataset_ods.csv"
    )
}}

with source as (
    select * from {{ ref('raw_financial_dataset_stg') }}
)

select * from source