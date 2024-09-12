module m0
type ty(n)
 integer,kind::n
 character(n)::x
end type
end
module mod01
use m0
 type t
  procedure(f), pointer, nopass :: p
 end type
 contains
  function f() result(r)
   type(ty(4)), pointer     :: r
   allocate( r)
   r%x = 'pass'
  end function
 function cf3() result(r)
  type (t) :: r
  r = t(f)
 end function
end module

use mod01
print *,'pass'
end
