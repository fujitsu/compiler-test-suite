module m1
integer,BIND(C):: a
end
use m1
a=1
print *,'pass'
end
