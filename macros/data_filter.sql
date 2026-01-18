{% macro order_age(column = 'o_orderdate') %}
datediff(year,{{column}},current_date)
{% endmacro %}