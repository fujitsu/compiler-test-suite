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
 type(t)::v=t(f)
 type tt
  procedure(w), pointer, nopass :: q
 end type
 type(tt)::vv=tt(w)
 contains
  function f() result(r)
   class(* ), pointer     :: r
   allocate(tty:: r)
   k=0
   select type(r)
   type is(tty)
   r%x = 'pass'
   k=1
   end select
   if (k/=1) print *,202
  end function
  function w() result(r)
   procedure(f), pointer :: r
   r=>f
  end function
end module

use mod01
print *,'pass'
end
