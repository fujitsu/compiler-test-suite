program test
use ieee_exceptions

logical ::res
logical,parameter::r3= ieee_support_flag(ieee_inexact, 34.4)
logical,parameter::r4= ieee_support_flag(ieee_underflow, 34.4)
logical,parameter::r5= ieee_support_flag(ieee_divide_by_zero, 34.4)
logical,parameter::r6= ieee_support_flag(ieee_overflow, 34.4)
logical,parameter::r7= ieee_support_flag(ieee_invalid, 34.423)

res=ieee_support_flag(ieee_inexact, 34.4)
if(res .neqv. r3) print*,"106"

res= ieee_support_flag(ieee_underflow, 34.4)
if(res .neqv. r4) print*,"107"

res= ieee_support_flag(ieee_divide_by_zero, 34.4)
if(res .neqv. r5) print*,"108"

res= ieee_support_flag(ieee_overflow, 34.4)
if(res .neqv. r6) print*,"109"

res= ieee_support_flag(ieee_invalid, 34.423)
if(res .neqv. r7) print*,"110"

print*,"pass"
end program test
