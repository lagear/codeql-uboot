
import cpp

from FunctionCall c
where 
c.getTarget().hasName("memcpy")
select c, "a call to memcpy function"
