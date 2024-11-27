program main
use ieee_exceptions
 
real*2,parameter :: b=5.0
logical,parameter::a1=ieee_support_flag (ieee_overflow,b)
  
if(.true. .neqv. a1) print*,"101"

print*,"pass"
end program main
