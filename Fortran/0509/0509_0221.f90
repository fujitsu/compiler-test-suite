module mod01
 type t
  procedure(f), pointer, nopass :: p
 end type
 contains
  function f() result(r)
   class(*), allocatable    :: r
allocate(r,source=1)
  end function
 subroutine s() 
  type (t)          :: r2= t(f)
  r2= g(t(f))
call ss(r2%p())
end
function g(d) result(r)
type(t)::r,d
intent(in)::d
r=d
end
subroutine ss(d)
class(*)::d
k=0
select type(d)
type is(integer)
if (d/=1) print *,202
k=1
end select
if (k/=1) print *,303
 end 
end module

use mod01
call s
print *,'pass'
end
