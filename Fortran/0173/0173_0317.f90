module m1
type x
  integer,allocatable::z(:)
end type
interface
function f() result(r)
import
type(x):: r
end function
end interface
end
subroutine s1
use m1
  TYPE(x) :: v,w
v= x(null())
if (allocated(v%z) ) print *,101
v= x(w%z)
if (allocated(v%z) ) print *,102
v= x([1]  )
if (.not.allocated(v%z) ) print *,111
if (v%z(1)/=1 ) print *,112
end
do k=1,1000
call s1
end do
print *,'pass'
end

function f() result(r)
use m1
type(x):: r
allocate(r%z(1),source=1)
end function
