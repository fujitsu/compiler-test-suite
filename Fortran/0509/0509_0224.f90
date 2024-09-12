module mod01
 type t
  procedure(f), pointer, nopass :: p
 end type
 contains
  function f() result(r)
   class(*), pointer     :: r
   allocate(r,source=100)

  end function
 subroutine s() 
  type (t) :: r = t(f)
 select type(q=>r%p())
  typeis(integer)
   if (q/=100) print *,2000  
 end select
  r = t(f)
 select type(q=>r%p())
  typeis(integer)
   if (q/=100) print *,2001  
 end select

 end 
end module

use mod01
call s
print *,'pass'
end
