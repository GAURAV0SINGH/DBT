select name, count(*) as total_order
from {{ref("ephe")}}
group by name 