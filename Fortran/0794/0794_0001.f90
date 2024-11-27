module test
 implicit none
 type x
  integer::x1
  procedure(),nopass,pointer:: p=> null()
 end type
 type(x):: xx
end
module m1
use test
end
subroutine sub
use m1
implicit none
if (associated( xx%p ) )print *,201
end
call sub
print *,'pass'
end
