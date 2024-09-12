module mod01
 type t
  procedure(f), pointer, nopass :: p
 end type
 contains
  function f() result(r)
   class(*), allocatable    :: r

  end function
 subroutine s() 
  type (t) :: r
  r = t(f)
 end 
end module

use mod01
call s
print *,'pass'
end
