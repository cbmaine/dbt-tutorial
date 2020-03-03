with validation as (

  select *
  from {{ ref('test_model_1') }}
  where id < 0

)

select * from validation