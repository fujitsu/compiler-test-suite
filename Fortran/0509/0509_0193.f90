module m0
type ty
 integer::z
end type
type,extends(ty)::tty
 character(4)::x
end type
end
module mod01
use m0
 type t
  procedure(f), pointer, nopass :: p
 end type
 type(t)::v
 contains
  function f() result(r)
   class(ty), pointer     :: r(:)
  end function
 function cf1() result(r)
  type (t) :: r
  r = t(v%p)
 end function
end module

use mod01
print *,'pass'
end
