program main
use ieee_exceptions


logical,parameter::r3= ieee_support_flag(ieee_inexact, 34.4_2)
logical,parameter::r4= ieee_support_flag(ieee_underflow, 34.4_2)
logical,parameter::r5= ieee_support_flag(ieee_divide_by_zero, 34.4_2)
logical,parameter::r6= ieee_support_flag(ieee_overflow, 34.4_2)
logical,parameter::r7= ieee_support_flag(ieee_invalid, 34.423_2)

if(.true. .neqv. r3) print*,"106"

if(.true. .neqv. r4) print*,"107"

if(.true. .neqv. r5) print*,"108"

if(.true. .neqv. r6) print*,"109"

if(.true. .neqv. r7) print*,"110"


print*,"pass"
end program main
