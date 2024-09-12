module m1
interface gen
 procedure s1,s2
end interface
contains
subroutine s1(a)
integer,allocatable::a
allocate(a,source=1)
end subroutine
subroutine s2(a)
integer,pointer    ::a
allocate(a,source=2)
end subroutine
end
use m1 
integer,allocatable::a1
integer,pointer::a2
call gen(a1)
if (a1/=1) print *,101
call gen(a2)
if (a2/=2) print *,102
print *,'pass'
end
