module m1
type st
  integer,allocatable::k1
  integer,dimension(:),allocatable::k2
end type
contains
subroutine s1(c1)
type(st),dimension(2)::c1
call allocate(c1(1)%k2)
c1(1)%k2(1)=1
end subroutine
subroutine allocate(a2)
integer ,allocatable::a2
dimension::  a2(:)
allocate(a2(2))
end subroutine
end
subroutine x1
use m1
type(st),dimension(2)::c1
call       s1(c1)
end
call x1
print *,'pass'
end
