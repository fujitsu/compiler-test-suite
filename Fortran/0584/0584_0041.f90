program test
use ieee_arithmetic

logical,parameter ::a1=ieee_support_rounding (ieee_down)
logical,parameter ::a2=ieee_support_rounding (ieee_up)
logical,parameter ::a3=ieee_support_rounding (ieee_to_zero)
logical,parameter ::a4=ieee_support_rounding (ieee_nearest)
logical,parameter ::a5=ieee_support_rounding (ieee_other)

logical ::res

res= ieee_support_rounding (ieee_down)
if(res .neqv. a1) print*,"101"

res= ieee_support_rounding (ieee_up)
if(res .neqv. a2) print*,"102"

res=ieee_support_rounding (ieee_to_zero)
if(res .neqv. a3) print*,"103"

res=ieee_support_rounding (ieee_nearest)
if(res .neqv. a4) print*,"104"

res=ieee_support_rounding (ieee_other)
if(res .neqv. a5) print*,"105"

print*,"pass"
end program test
