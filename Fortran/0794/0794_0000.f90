module test
 implicit none
 type x
  integer::x1
  procedure(),nopass,pointer:: p=> null()
 end type
 type(x):: xx
end
subroutine sub
use test
implicit none
if (associated( xx%p ) )print *,201
end
call sub
print *,'pass'
end
