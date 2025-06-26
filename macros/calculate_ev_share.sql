{% macro calculate_ev_share(ev, total) %}
    case when {{ total }} = 0 then 0 else round({{ ev }} * 100.0 / {{ total }}, 2) end
{% endmacro %}
