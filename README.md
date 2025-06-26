# ⚡ EV Insights DWH – Electric Vehicle Data Warehouse using dbt + EDA

This project builds a modern data warehouse using **dbt**, **Snowflake**, and **EDA** techniques to analyze Electric Vehicle (EV) trends across regions and years.

## Project Overview

- Cleaned and transformed raw EV population and adoption datasets
- Built staging, intermediate, and mart models using dbt
- Implemented **data tests**, **snapshots**, and **seeds**
- Used **Power BI** for data visualization and dashboarding
- Enables reporting on regional EV trends, adoption rates, infrastructure, and cost comparisons

## Tech Stack

- **dbt** for data transformation
- **Snowflake** as the cloud data warehouse
- **Power BI** for dashboards and visualizations
- GitHub for version control

## Project Structure

```bash
EV/
├── models/               # dbt models (staging, marts, intermediate)
├── seeds/                # Raw cleaned seed datasets
├── snapshots/            # Slowly changing dimension tracking
├── tests/                # Custom and generic dbt tests
├── macros/               # Optional: Custom macros
├── dbt_project.yml       # dbt config
└── README.md             # Project documentation
