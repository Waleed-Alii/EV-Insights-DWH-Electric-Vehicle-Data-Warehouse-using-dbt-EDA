{{ config(materialized='table') }}

select
    state,
    year,
    ev_percentage_share,
    total_vehicles_registered,
    ev_vehicles_registered,
    total_ev_registered,
    charging_stations_count,
    avg_ev_price,
    avg_cost_ev,
    avg_cost_gasoline_vehicle,
    gov_incentive_amount,
    (avg_cost_gasoline_vehicle - avg_cost_ev) as price_difference,
    co2_emissions_per_vehicle,
    fuel_price_per_liter,
    electricity_price_per_kWh,
    round((ev_vehicles_registered::float / nullif(total_vehicles_registered, 0)) * 100, 2) as calculated_ev_share
from {{ ref('int_ev_analysis') }}
