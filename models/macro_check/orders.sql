select {{trim_upper('o_comment')}} as comment_clean 
from {{source("tpch",'orders')}}