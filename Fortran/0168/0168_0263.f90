module m1
 integer,private,allocatable:: a1
contains
subroutine s1
allocate(a1)
a1=1
if (a1/=1) print *,101
end subroutine
end
use m1
call s1
print *,'pass'
end
