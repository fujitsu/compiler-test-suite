program test
use ieee_exceptions
integer::res
logical ::x
integer,parameter ::a1=kind(ieee_support_halting (ieee_overflow))
integer,parameter ::a2=kind(ieee_support_halting (ieee_divide_by_zero))
integer,parameter ::a3=kind(ieee_support_halting (ieee_invalid))
integer,parameter ::a4=kind(ieee_support_halting (ieee_underflow))
integer,parameter ::a5=kind(ieee_support_halting (ieee_inexact))

res= kind(x)
if(res /= a1) print*,"101"

if(res /= a2) print*,"102"

if(res /= a3) print*,"103"

if(res /= a4) print*,"104"

if(res /= a5) print*,"105"

print*,"pass"
end program test
