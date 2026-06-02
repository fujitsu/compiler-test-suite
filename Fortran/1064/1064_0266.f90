module m1
 integer,public,allocatable:: a1
end
module m2
use m1
end
module m3
use m2
end       
subroutine s1
use m3
a1=1
if (a1/=1) print *,101
end subroutine
call s0
call s1
print *,'pass'
end
subroutine s0
use m1
allocate(a1)
end
