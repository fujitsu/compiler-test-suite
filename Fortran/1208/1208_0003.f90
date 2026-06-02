module m1
type b
  integer                 ::c1
end type
type x
  class(*),allocatable::x1
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
allocate(x::h%v(1))
select type(w=>h%v)
  class is(x)
allocate(b::w  (1)%x1)
end select

allocate(x::h%u(1))

where(mask)
  h%u=h%v
end where
!select type(w=>h%u)
!  class is(x)
if (.not.allocated(h%u(1)%x1)) print *,10011
!end select
!print *,'u:',1,1,loc(h%u(1)%x1)
end
call s1()
print *,'sngg340r : pass'
end
