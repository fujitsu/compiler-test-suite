module mod01
 type t
  procedure(f), pointer, nopass :: p
 end type
 contains
  function f() result(r)
   class(*), pointer     :: r
   allocate(r,source=100.0)

  end function
 subroutine s() 
  type (t) :: r = t(f)
k=0
 select type(q=>r%p())
  typeis(integer)
   k=1
   if (q/=100) print *,2000  
 end select
if (k/=0) print *,10001
  r = t(f)
 select type(q=>r%p())
  typeis(integer)
   k=1
   if (q/=100) print *,2001  
 end select
if (k/=0) print *,10001

 end 
end module

use mod01
call s
print *,'pass'
end
