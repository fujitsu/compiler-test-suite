module m1
contains
pure function kk(k)
integer,value:: k
kk=k
end function
end
use m1
if (kk(1)/=1) print *,101
print *,'pass'
end
