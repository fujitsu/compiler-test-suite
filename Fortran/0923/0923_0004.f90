
use ieee_arithmetic


logical,parameter::r3= ieee_support_rounding(ieee_down, 34.4_2)
logical,parameter::r4= ieee_support_rounding(ieee_up, 34.4_2)
logical,parameter::r5= ieee_support_rounding(ieee_to_zero, 34.4_2)
logical,parameter::r6= ieee_support_rounding(ieee_nearest, 34.4_2)
logical,parameter::r7= ieee_support_rounding(ieee_other, 34.423_2)


if(.true. .neqv. r3) print*,"106"


if(.true. .neqv. r4) print*,"107"



if(.true. .neqv. r5) print*,"108"


if(.true. .neqv. r6) print*,"109"


if(.true. .neqv. r7) print*,"110"



print*,"pass"
end
