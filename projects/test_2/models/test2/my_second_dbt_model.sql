
-- Use the `ref` function to select from other models

select *
from {{ ref('test_2') }}
where id = 1
