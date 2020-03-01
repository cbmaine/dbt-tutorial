
/*
    My own test model
*/

{{ config(materialized='table') }}

with source_data as (

{% for i in range(110) %}

  select {{i}} as id {% if not loop.last %} union all {% endif %}

{% endfor %}

)

select *
from source_data

