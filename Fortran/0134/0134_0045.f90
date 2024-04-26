module m1
contains
subroutine s1(c1)
character(*),allocatable,dimension(:)::c1

allocate(c1(2))
c1='1'
end subroutine
end
subroutine x1
use m1
character(1),allocatable,dimension(:)::c1
call       s1(c1)
if (c1(1)/='1')print *,101,c1(1)
if (c1(2)/='1')print *,102,c1(2)
end
call x1
print *,'pass'
end
