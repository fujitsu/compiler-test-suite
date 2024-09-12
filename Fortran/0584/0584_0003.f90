program test
use ieee_exceptions

real ,parameter,dimension(3) ::r2 =[12.1,23.3,34.34]
logical ::res

logical,parameter::r9=ieee_support_flag (ieee_overflow,r2)
logical,parameter ::r10=ieee_support_flag (ieee_divide_by_zero,r2)
logical,parameter::r5= ieee_support_flag(ieee_invalid, r2)
logical,parameter::r6= ieee_support_flag(ieee_underflow, r2)
logical,parameter::r7= ieee_support_flag(ieee_inexact, r2)

res= ieee_support_flag(ieee_invalid, r2)
if(res .neqv. r5) print*,"108"

res= ieee_support_flag(ieee_underflow, r2)
if(res .neqv. r6) print*,"109"

res= ieee_support_flag(ieee_inexact, r2)
if(res .neqv. r7) print*,"110"

res= ieee_support_flag (ieee_overflow,r2) 
if(res .neqv. r9) print*,"112"

res= ieee_support_flag (ieee_divide_by_zero,r2)
if(res .neqv. r10) print*,"113"

print*,"pass"
end program test
