{{
    config(
        materialized='table'
    )
}}

with 

source as (

    select * from {{ source('staging', 'fhv_tripdata') }}

),

renamed as (

    select
        {{ dbt_utils.generate_surrogate_key(['dropoff_datetime', 'pickup_datetime']) }} as tripid,
        dispatching_base_num,
        pickup_datetime,
        dropoff_datetime,
        pulocationid,
        dolocationid,
        sr_flag,
        affiliated_base_number

    from source
    where extract(YEAR FROM pickup_datetime) = 2019
)

select * from renamed
