module m1
 integer,private,allocatable:: a1
contains
subroutine s1
call s0
a1=1
if (a1/=1) print *,101
end subroutine
subroutine s0
allocate(a1)
end subroutine
end
use m1
call s1
print *,'pass'
end
