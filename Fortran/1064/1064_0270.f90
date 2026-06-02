module m1
 integer,public ,allocatable:: a1
contains
subroutine s1
a1=1
if (a1/=1) print *,101
end subroutine
subroutine s2
a1=2
if (a1/=2) print *,102
end subroutine
subroutine s0
allocate(a1)
end subroutine
end
use m1
call s0
call s1
deallocate(a1)
call s0
call s2
print *,'pass'
end
