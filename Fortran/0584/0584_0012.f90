program test
use ieee_exceptions

real*16 ,parameter,dimension(3) ::r2 =[12.1,23.3,34.34]
integer ::res
logical :: x

integer,parameter::r9=kind(ieee_support_flag (ieee_overflow,r2))
integer,parameter ::r10=kind(ieee_support_flag (ieee_divide_by_zero,r2))
integer,parameter::r5= kind(ieee_support_flag(ieee_invalid, r2))
integer,parameter::r6= kind(ieee_support_flag(ieee_underflow, r2(1)))
integer::r7= kind(ieee_support_flag(ieee_inexact, 45.45_16))

res=kind(x)

if(res /= r5) print*,"108"

if(res /= r6) print*,"109"

if(res /= r7) print*,"110"

if(res /= r9) print*,"112"

if(res /= r10) print*,"113"

print*,"pass"
end program test
