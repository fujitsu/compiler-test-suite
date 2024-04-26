module m1
type st
  integer,allocatable::k1,k2
end type
type sw
  integer,pointer::k1,k2
end type
contains
subroutine s1(c1,c2,k1,k2,d)
character(*),allocatable::c1,c2
integer,allocatable::k1,k2
type(st),allocatable,dimension(:)::d

allocate(c1,c2,k1,k2,d(2)%k1,d(2)%k2)
c1='1'
c2='2'
k1=1
k2=2
d(2)%k1=1
d(2)%k2=2
end subroutine
subroutine s2(c1,c2,k1,k2,d)
character(*),pointer::c1,c2
integer,pointer::k1,k2
type(sw),pointer,dimension(:)::d
c1=>c2
k1=>k2
d(2)%k1=>d(2)%k2
end subroutine
end
subroutine x1
use m1
character(1),allocatable::c1,c2
integer,allocatable::k1,k2
type(st),allocatable,dimension(:)::d
allocate(d(2))
call       s1(c1,c2,k1,k2,d)
if (c1/='1')print *,101,c1
if (c2/='2')print *,103,c2
if (k1/=1)print *,201,k1
if (k2/=2)print *,204,k2
if (d(2)%k1/=1)print *,301,d(2)%k1
if (d(2)%k2/=2)print *,303,d(2)%k2
end
subroutine x2
use m1
character(1),pointer::c1,c2
integer,pointer::k1,k2
type(sw),pointer,dimension(:)::d
allocate(d(2))
allocate(c2,k2,d(2)%k2)
c2='2'
k2=2
d(2)%k2=2
call       s2(c1,c2,k1,k2,d)
if (c1/='2')print *,2101,c1
if (c2/='2')print *,2103,c2
if (k1/=2)print *,2201,k1
if (k2/=2)print *,2204,k2
if (d(2)%k1/=2)print *,2302,d(2)%k1
if (d(2)%k2/=2)print *,2304,d(2)%k2
end
call x1
call x2
print *,'pass'
end
