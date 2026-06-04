module m1
contains
subroutine s1(b1)
 integer,allocatable:: a1
 integer:: b1
 a1=b1
if (a1/=123) print *,201
if (loc(a1)==0) print *,202
end subroutine
end
subroutine s
use m1
 integer     ,parameter:: b1=123
call s1(b1)
end
call s
print *,'pass'
end
