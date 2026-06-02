module m1
type b
  integer                 ::c1
end type
type,extends(b)::e
  character(:),allocatable::c2(:)
end type
type x
  class(b),allocatable::x1
end type
character(*),parameter::a1=repeat('a',1000)
character(*),parameter::b1=repeat('b',1000)
logical,parameter::t=.true.,f=.false.
logical::mask(3,3)
end
subroutine s1
use m1
type g
type (x),allocatable::v(:,:),u(:,:)
end type
type (g)::h

mask=f
mask(1,3)=t
mask(3,3)=t
allocate(h%v(3,3))
allocate(e::h%v(1,3)%x1)
allocate(e::h%v(2,3)%x1)
allocate(e::h%v(3,3)%x1)

allocate(h%u(3,3))

where(mask)
  h%u=h%v
end where
k=0
if (allocated(h%u(1,1)%x1)) print *,10011
if (allocated(h%u(2,1)%x1)) print *,10012
if (allocated(h%u(3,1)%x1)) print *,10013
if (allocated(h%u(1,2)%x1)) print *,10014
if (allocated(h%u(2,2)%x1)) print *,10015
if (allocated(h%u(3,2)%x1)) print *,10016
if (.not.allocated(h%u(1,3)%x1)) print *,10017
if (allocated(h%u(2,3)%x1)) print *,10018
if (.not.allocated(h%u(3,3)%x1)) print *,10019
!print *,'v:',1,3,loc(h%v(1,3)%x1)
!print *,'v:',2,3,loc(h%v(2,3)%x1)
!print *,'v:',3,3,loc(h%v(3,3)%x1)
!print *,'u:',1,3,loc(h%u(1,3)%x1)
!print *,'u:',2,3,loc(h%u(2,3)%x1)
!print *,'u:',3,3,loc(h%u(3,3)%x1)
end
call s1()
print *,'sngg307r : pass'
end
