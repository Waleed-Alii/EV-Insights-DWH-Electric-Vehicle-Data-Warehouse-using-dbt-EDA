{{ config(materialized='view') }}

select
    country,
    year,
    total_vehicles_registered,
    ev_vehicles_registered,
    ev_percentage_share,
    charging_stations_count,
    avg_cost_ev,
    avg_cost_gasoline_vehicle,
    gov_incentive_amount,
    co2_emissions_per_vehicle,
    fuel_price_per_liter,
    electricity_price_per_kWh
from {{ source('ev_schema', 'ev_adoption_dataset') }}
