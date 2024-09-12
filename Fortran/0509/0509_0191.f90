module mod01
 type t
  procedure(f), pointer, nopass :: p
 end type
 contains
  function f() result(r)
   class(* ), pointer     :: r
  end function
  function w() result(r)
   procedure(f), pointer :: r
   r=>f
  end function
end module

use mod01
print *,'pass'
end
