module m1
type st
  integer,allocatable,dimension(:)::k1,k2
end type
type sw
  integer,pointer,dimension(:)::k1,k2
end type
contains
subroutine s1(c1,c2,k1,k2,d)
character(*),allocatable,dimension(:)::c1,c2
integer,allocatable,dimension(:)::k1,k2
type(st),allocatable,dimension(:)::d

allocate(c1(2),c2(2),k1(2),k2(2),d(2)%k1(2),d(2)%k2(2))
c1='1'
c2='2'
k1=1
k2=2
d(2)%k1=1
d(2)%k2=2
end subroutine
subroutine s2(c1,c2,k1,k2,d)
character(*),pointer,dimension(:)::c1,c2
integer,pointer,dimension(:)::k1,k2
type(sw),pointer,dimension(:)::d
c1=>c2
k1=>k2
d(2)%k1=>d(2)%k2
end subroutine
end
subroutine x1
use m1
character(1),allocatable,dimension(:)::c1,c2
integer,allocatable,dimension(:)::k1,k2
type(st),allocatable,dimension(:)::d
allocate(d(2))
call       s1(c1,c2,k1,k2,d)
if (c1(1)/='1')print *,101,c1(1)
if (c1(2)/='1')print *,102,c1(2)
if (c2(1)/='2')print *,103,c2(1)
if (c2(2)/='2')print *,104,c2(2)
if (c2(2)/='2')print *,104,c2(2)
if (k1(1)/=1)print *,201,k1(1)
if (k1(2)/=1)print *,202,k1(2)
if (k2(1)/=2)print *,203,k2(1)
if (k2(2)/=2)print *,204,k2(2)
if (d(2)%k1(1)/=1)print *,301,d(2)%k1(1)
if (d(2)%k1(2)/=1)print *,302,d(2)%k1(2)
if (d(2)%k2(1)/=2)print *,303,d(2)%k2(1)
if (d(2)%k2(2)/=2)print *,304,d(2)%k2(2)
end
subroutine x2
use m1
character(1),pointer,dimension(:)::c1,c2
integer,pointer,dimension(:)::k1,k2
type(sw),pointer,dimension(:)::d
allocate(d(2))
allocate(c2(2),k2(2),d(2)%k2(2))
c2='2'
k2=2
d(2)%k2=2
call       s2(c1,c2,k1,k2,d)
if (c1(1)/='2')print *,2101,c1(1)
if (c1(2)/='2')print *,2102,c1(2)
if (c2(1)/='2')print *,2103,c2(1)
if (c2(2)/='2')print *,2104,c2(2)
if (c2(2)/='2')print *,2104,c2(2)
if (k1(1)/=2)print *,2201,k1(1)
if (k1(2)/=2)print *,2202,k1(2)
if (k2(1)/=2)print *,2203,k2(1)
if (k2(2)/=2)print *,2204,k2(2)
if (d(2)%k1(1)/=2)print *,2301,d(2)%k1(1)
if (d(2)%k1(2)/=2)print *,2302,d(2)%k1(2)
if (d(2)%k2(1)/=2)print *,2303,d(2)%k2(1)
if (d(2)%k2(2)/=2)print *,2304,d(2)%k2(2)
end
call x1
call x2
print *,'pass'
end





