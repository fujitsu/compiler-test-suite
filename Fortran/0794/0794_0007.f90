module test
 implicit none
interface 
  subroutine s
  end subroutine
end interface
  procedure(s),pointer:: p=> null()
end
module m1
use test
end
subroutine sub
use m1
implicit none
if (associated( p ) )print *,201
end
call sub
print *,'pass'
end
