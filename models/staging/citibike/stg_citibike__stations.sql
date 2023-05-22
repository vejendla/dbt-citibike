with 

source as (
    select * from {{ source('citibike', 'citibike_stations')}}
),

renamed as (
    select * from source
)

select * from renamed


