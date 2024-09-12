program test
use ieee_arithmetic

real ,parameter,dimension(3) ::r2 =[12.1,23.3,34.34]
logical ::res

logical,parameter :: r11= ieee_support_rounding (ieee_up,r2(1))
logical,parameter :: r12 = ieee_support_rounding(ieee_down,r2(2))
logical,parameter :: r13= ieee_support_rounding(ieee_nearest,r2(3))
logical,parameter :: r14 = ieee_support_rounding(ieee_to_zero,r2(1)) 
logical,parameter :: r15 =ieee_support_rounding(ieee_other,r2(2))

res= ieee_support_rounding (ieee_up,r2(1))
if(res .neqv. r11) print*,"114"

res= ieee_support_rounding (ieee_down,r2(2))
if(res .neqv. r12) print*,"115"

res= ieee_support_rounding (ieee_nearest,r2(3))
if(res .neqv. r13) print*,"116"

res= ieee_support_rounding (ieee_to_zero,r2(1))
if(res .neqv. r14) print*,"117"

res= ieee_support_rounding (ieee_other,r2(2))
if(res .neqv. r15) print*,"118"

print*,"pass"
end program test
