select * from {{ source('mta_nyct_bus_manhattan', 'mta_nyct_bus_manhattan_stops')}}