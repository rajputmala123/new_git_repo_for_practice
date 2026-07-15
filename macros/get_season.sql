models/example/get_season.sql$0models/example/get_season.sql$0{% macro get_seasons(x)%}

CASE 
    WHEN MONTH(TO_TIMESTAMP({{x}})) in (12, 1, 2) then 'Winter'
    WHEN MONTH(TO_TIMESTAMP({{x}})) in (3, 4, 5) then 'Summer'
    WHEN MONTH(TO_TIMESTAMP({{x}})) in (6, 7, 8) then 'Rainy'
    ELSE 'Spring'
    END


{%endmacro%}