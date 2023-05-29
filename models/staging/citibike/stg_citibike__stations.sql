with 

source as (
    select * from {{ source('citibike_filtered', 'stations_from_trip_data')}}
    WHERE station_id IS NOT NULL
),

renamed as (
    select * from source
)

select * from renamed


