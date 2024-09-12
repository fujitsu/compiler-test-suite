call sub
end

subroutine sub()
use ieee_arithmetic

real,parameter :: b=5.0
logical ::res
logical,parameter::a1=ieee_support_rounding (ieee_down,b)

res =ieee_support_rounding (ieee_down,b)
if(res .neqv. a1) print*,"101"

print*,"pass"
end subroutine sub
