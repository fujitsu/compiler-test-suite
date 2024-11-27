module test
 implicit none
real::p
  procedure(),pointer:: p=> null()
end
module m1
use test
end
subroutine sub
use m1
implicit none
if (.not.associated( p ) )print *,201
end
use m1
interface 
  function   s()
  end function
end interface
p=>s
if (p()/=1) print *,202
call dd(p)
call sub
print *,'pass'
contains
subroutine dd(t)
procedure()::t
if (t()/=1) print *,2002
end subroutine
end 
  function   s()
s=1
  end function
