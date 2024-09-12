use ieee_arithmetic
logical ::res
logical,parameter ::r12=ieee_support_rounding (ieee_to_zero,0.0_4)
logical,parameter ::r13=ieee_support_rounding (ieee_up,656.776_8)

res= ieee_support_rounding (ieee_to_zero,0.0_4)
if(res .neqv. r12) print*,"115"

res= ieee_support_rounding (ieee_up,656.776_8)
if(res .neqv. r13) print*,"116"

print*,"pass"
end
