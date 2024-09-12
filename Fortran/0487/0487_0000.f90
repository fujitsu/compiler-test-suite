module m1
interface gen
 procedure s1,s2,s3
end interface
contains
subroutine s3(a)
integer,allocatable::a
dimension a(:)
allocate(a(2),source=3)
end subroutine
subroutine s1(a)
integer,allocatable::a
allocate(a,source=1)
end subroutine
subroutine s2(a)
integer,pointer    ::a
allocate(a,source=2)
a=a+1
end subroutine
end
use m1 
integer,allocatable::a1,a3(:)
integer,pointer::a2
call gen(a1)
if (a1/=1) print *,101
call gen(a2)
if (a2/=3) print *,102
call gen(a3)
if (any(a3/=3)) print *,103
print *,'pass'
end
