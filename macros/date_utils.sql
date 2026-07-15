{% macro function1(x) %}
    CASE 
        WHEN TO_TIMESTAMP({{x}}) < current_date then 'Past'
    ELSE 'Future' END
{% endmacro %}