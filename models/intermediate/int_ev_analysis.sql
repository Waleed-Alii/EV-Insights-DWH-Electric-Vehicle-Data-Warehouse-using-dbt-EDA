{{ config(materialized='view') }}

with ev_population as (
    select
        model_year,
        state,
        count(*) as total_ev_registered,
        avg(electric_range) as avg_ev_range,
        avg(base_msrp) as avg_ev_price
    from {{ source('ev_schema', 'electric_vehicle_population_data_clean') }}
    where model_year is not null and state is not null
    group by model_year, state
),

ev_adoption as (
    select
        year,
        country as state,
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
)

select
    a.year,
    a.state,
    a.total_vehicles_registered,
    a.ev_vehicles_registered,
    a.ev_percentage_share,
    a.charging_stations_count,
    a.avg_cost_ev,
    a.avg_cost_gasoline_vehicle,
    a.gov_incentive_amount,
    a.co2_emissions_per_vehicle,
    a.fuel_price_per_liter,
    a.electricity_price_per_kWh,
    p.total_ev_registered,
    p.avg_ev_range,
    p.avg_ev_price
from ev_adoption a
left join ev_population p
  on a.year = p.model_year and a.state = p.state
