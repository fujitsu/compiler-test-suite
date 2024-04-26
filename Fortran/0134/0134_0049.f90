module m1
type st
  integer::k1,k2
end type
contains
subroutine s1(c1,c2)
type(st),allocatable,dimension(:)::c1
type(st),allocatable::c2
allocate(c1(2),c2)
c1%k2=1
c2%k2=2
end subroutine
subroutine s2()
type(st),allocatable,dimension(:)::c1
type(st),allocatable::c2
allocate(c1(2),c2)
c1%k2=1
c2%k2=2
if (c1(1)%k2/=1)print *,201,c1(1)
if (c1(2)%k2/=1)print *,202,c1(2)
if (c2%k2/=2)print *,203,c2
end subroutine
end
subroutine x1
use m1
type(st),allocatable,dimension(:)::c1
type(st),allocatable::c2
call       s1(c1,c2)
if (c1(1)%k2/=1)print *,101,c1(1)
if (c1(2)%k2/=1)print *,102,c1(2)
if (c2%k2/=2)print *,103,c2
call       s2()
end
call x1
print *,'pass'
end
