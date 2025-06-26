{% macro format_date(column_name) %}
    to_date({{ column_name }}, 'YYYY-MM-DD')
{% endmacro %}
