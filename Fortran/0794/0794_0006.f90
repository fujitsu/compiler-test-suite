module test
  procedure(),pointer:: p=> null()
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
