{% snapshot ev_population_snapshot %}
{{ config(
    target_schema='EV_SCHEMA',
    unique_key=['vin', 'model_year', 'make', 'model'],
    strategy='check',
    check_cols=['make', 'model', 'ev_type']
) }}

select
    vin,
    county,
    city,
    state,
    postal_code,
    model_year,
    make,
    model,
    ev_type,
    cafv_eligibility,
    electric_range,
    base_msrp,
    legislative_district,
    vehicle_id,
    vehicle_location,
    electric_utility,
    tract_2020
from {{ ref('stg_ev_population') }}

{% endsnapshot %}
