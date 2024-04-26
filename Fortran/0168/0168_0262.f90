module m1
 integer,public,allocatable:: a1
end
module m2
use m1
end
module m3
use m2
contains
subroutine s1
allocate(a1)
a1=1
if (a1/=1) print *,101
end subroutine
end
use m3
call s1
print *,'pass'
end
