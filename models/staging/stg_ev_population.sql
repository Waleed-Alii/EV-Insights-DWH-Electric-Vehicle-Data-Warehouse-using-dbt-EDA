with source as (
    select * from {{ source('ev_schema', 'electric_vehicle_population_data_clean') }}
)

select
    "VIN_1_10" as vin,
    "COUNTY" as county,
    "CITY" as city,
    "STATE" as state,
    "POSTAL_CODE" as postal_code,
    "MODEL_YEAR" as model_year,
    "MAKE" as make,
    "MODEL" as model,
    "ELECTRIC_VEHICLE_TYPE" as ev_type,
    "CLEAN_ALTERNATIVE_FUEL_VEHICLE_CAFV_ELIGIBILITY" as cafv_eligibility,
    "ELECTRIC_RANGE" as electric_range,
    "BASE_MSRP" as base_msrp,
    "LEGISLATIVE_DISTRICT" as legislative_district,
    "DOL_VEHICLE_ID" as vehicle_id,
    "VEHICLE_LOCATION" as vehicle_location,
    "ELECTRIC_UTILITY" as electric_utility,
    "TRACT_2020" as tract_2020
from source
