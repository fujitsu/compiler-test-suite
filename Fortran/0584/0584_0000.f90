program pro
use ieee_exceptions
real,parameter :: b=5.23
logical,parameter::a1=ieee_support_flag(ieee_inexact,b)
logical ::res
res= ieee_support_flag (ieee_inexact,b)
if(res .neqv. a1) print*,"101"
print*,"pass"
end program pro
