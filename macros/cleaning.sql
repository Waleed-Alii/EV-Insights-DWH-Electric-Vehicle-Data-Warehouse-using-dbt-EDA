{% macro clean_column(col_name) %}
    nullif(trim({{ col_name }}), '')
{% endmacro %}
