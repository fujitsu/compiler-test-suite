module test
 implicit none
interface 
  function   s()
  end function
end interface
  procedure(s),pointer:: p=> null()
end
module m1
use test
end
subroutine sub
use m1
implicit none
if (.not.associated( p ) )print *,201
if (p()/=1) print *,202
end
use m1
p=>s
call sub
print *,'pass'
end
  function   s()
s=1
  end function
