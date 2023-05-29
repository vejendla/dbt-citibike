select
    trip_id,
    arrival_time, 
    departure_time, 
    stop_id,
    stop_sequence,
    pickup_type,
    drop_off_type,
    timepoint
from {{ source('mta_nyct_bus_manhattan', 'mta_nyct_bus_manhattan_stop_times')}}