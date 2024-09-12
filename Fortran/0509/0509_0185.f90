module mod01
 type t
  procedure(f), pointer, nopass :: p
 end type
 contains
  function f() result(r)
   class(*), pointer     :: r
  end function
end module

 subroutine s() 
use mod01
  type (t) :: r = t(f)
 end 
call s
print *,'pass'
end
