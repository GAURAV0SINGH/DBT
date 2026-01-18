{% macro trim_upper(column_name) %}
lower(trim({{column_name}}))
{% endmacro %}