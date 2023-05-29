with trips as (
    select * from {{ ref('stg_citibike__trips') }}
),

final as (
    SELECT 
        CONCAT(trips.start_station_name, " to ", trips.end_station_name) as route,
        COUNT(*) as num_trips,
        ROUND(AVG(cast(trips.tripduration as int64) / 60),2) as duration
    FROM 
        trips 
    GROUP BY
        trips.start_station_name, trips.end_station_name
    ORDER BY
        num_trips DESC
)

select * from trips

