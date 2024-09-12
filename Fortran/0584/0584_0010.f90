program test
use ieee_exceptions
complex ,parameter:: c=(121.3,332.23)

logical,parameter ::a1=ieee_support_flag (ieee_overflow,c%re)
logical,parameter ::a2=ieee_support_flag (ieee_underflow,c%im)
logical,parameter ::a3=ieee_support_flag (ieee_divide_by_zero,c%re)
logical,parameter ::a4=ieee_support_flag (ieee_invalid,c%im)
logical,parameter ::a5=ieee_support_flag (ieee_inexact,c%re)

logical ::res

res= ieee_support_flag (ieee_overflow ,c%re)
if(res .neqv. a1) print*,"101"

res= ieee_support_flag (ieee_underflow,c%im)
if(res .neqv. a2) print*,"102"

res=ieee_support_flag (ieee_divide_by_zero,c%re)
if(res .neqv. a3) print*,"103"

res=ieee_support_flag (ieee_invalid,c%im)
if(res .neqv. a4) print*,"104"

res=ieee_support_flag (ieee_inexact,c%re)
if(res .neqv. a5) print*,"105"

print*,"pass"
end program test
