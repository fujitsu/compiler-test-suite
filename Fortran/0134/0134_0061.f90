module m1
type st
  integer,dimension(:),allocatable::k2
end type
integer::p(2)=2
contains
subroutine s1(c1)
type(st)::c1
allocate(c1%k2,source=p)
c1%k2(1)=1
call allocate(c1%k2)
deallocate(c1%k2)
end subroutine
subroutine allocate(k)
  integer,dimension(:),allocatable::k
if (k(1)/=1)print *,102
  deallocate(k)
  allocate(k(2),source=p)
end subroutine
end
subroutine x1
use m1
type(st)::c1
call       s1(c1)
end
call x1
print *,'pass'
end
