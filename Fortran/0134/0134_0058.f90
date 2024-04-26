module m1
type st
  integer,allocatable::k1
  integer,dimension(:),allocatable::k2
end type
contains
subroutine s1(c1,c2)
type(st),allocatable,dimension(:)::c1
type(st),allocatable::c2
allocate(c1(2),c2)
call allocate(c1(1)%k1,c1(1)%k2,c1(2)%k1,c1(2)%k2,c2%k1,c2%k2)
c1(1)%k1   =1
c1(2)%k1   =1
c1(1)%k2(1)=1
c1(2)%k2(1)=1
c1(1)%k2(2)=1
c1(2)%k2(2)=1
c2%k1=2
c2%k2=2
end subroutine
subroutine allocate(a1,a2,a3,a4,a5,a6)
integer ,allocatable::a1,a2,a3,a4,a5,a6
dimension::  a2(:),a4(:),a6(:)
allocate(a1,a2(2),a3,a4(2),a5,a6(2))
end subroutine
end
subroutine x1
use m1
type(st),allocatable,dimension(:)::c1
type(st),allocatable::c2
call       s1(c1,c2)
if (c1(1)%k1/=1)print *,101
if (c1(2)%k1/=1)print *,102
if (c1(1)%k2(1)/=1)print *,102
if (c1(1)%k2(2)/=1)print *,104
if (c1(2)%k2(1)/=1)print *,105
if (c1(2)%k2(2)/=1)print *,106
if (c2%k1/=2)print *,107
if (c2%k2(1)/=2)print *,108
if (c2%k2(2)/=2)print *,109
end
call x1
print *,'pass'
end
