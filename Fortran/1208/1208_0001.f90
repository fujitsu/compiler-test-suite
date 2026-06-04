module m1
type b
  integer                 ::c1
end type
type x
  class(b),allocatable::x1
end type
logical,parameter::t=.true.,f=.false.
logical::mask(1)
end
subroutine s1
use m1
type g
class(x),allocatable::v(:)
type (x),allocatable::u(:)
end type
type (g)::h

mask=t
allocate(h%v(1))
allocate(h%v(1)%x1)

allocate(h%u(1))

where(mask)
  h%u=h%v
end where
k=0
if (.not.allocated(h%u(1)%x1)) print *,10011
!print *,'u:',1,1,loc(h%u(1)%x1)
end
call s1()
print *,'sngg311r : pass'
end
