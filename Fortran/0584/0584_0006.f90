use ieee_exceptions
logical ::res
logical,parameter ::r12=ieee_support_flag (ieee_divide_by_zero,0.0_4)
logical,parameter ::r13=ieee_support_flag (ieee_inexact,656.776_8)

res= ieee_support_flag (ieee_divide_by_zero,0.0_4)
if(res .neqv. r12) print*,"115"

res= ieee_support_flag (ieee_inexact,656.776_8)
if(res .neqv. r13) print*,"116"

print*,"pass"
end
