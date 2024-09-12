module m0
type ty(n)
 integer,kind::n
 character(n)::x
end type
end
module mod01
use m0
 contains
  function f() result(r)
   type(ty(4)), pointer     :: r
   allocate( r)
   r%x = 'pass'
  end function
  function w() result(r)
   procedure(f), pointer :: r
   r=>f
  end function
end module

use mod01
print *,'pass'
contains
end
