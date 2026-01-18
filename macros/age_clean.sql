{% macro age_and_clean(date_col = 'o_orderdate', name_col = 'o_orderkey')%}
{{order_age(date_col)}} as order_age_days,
{{trim_upper(name_col)}} as name_trim

{% endmacro %}