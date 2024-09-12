call sub1()
print*,"pass"
end 

subroutine sub1()
use mod
real ::y

y=sub()
end subroutine sub1

module mod

contains
function sub()
use ieee_exceptions
real ::sub
logical::res
logical,parameter :: a1=ieee_support_halting (ieee_overflow)
logical,parameter :: a2=ieee_support_halting (ieee_divide_by_zero)
logical,parameter :: a3=ieee_support_halting (ieee_invalid)
logical,parameter :: a4=ieee_support_halting (ieee_underflow)
logical,parameter :: a5=ieee_support_halting (ieee_inexact)

res= ieee_support_halting (ieee_overflow)
if(res .neqv. a1) print*,"101"

res= ieee_support_halting (ieee_divide_by_zero)
if(res .neqv. a2) print*,"102"

res= ieee_support_halting (ieee_invalid)
if(res .neqv. a3) print*,"103"

res= ieee_support_halting (ieee_underflow)
if(res .neqv. a4) print*,"104"

res= ieee_support_halting (ieee_inexact)
if(res .neqv. a5) print*,"105"
sub=1.3

end function sub
end module
