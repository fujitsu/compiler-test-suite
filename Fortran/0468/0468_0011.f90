module m1
contains
subroutine s(k)
integer,value:: k
if (k/=1) print *,101
end subroutine
end
use m1
call s(1)
print *,'pass'
end
