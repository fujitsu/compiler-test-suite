use ieee_arithmetic
type(ieee_round_type),parameter ::obj= ieee_up
logical ::res
real ::x
logical,parameter ::r12=ieee_support_rounding (ieee_up,x=3443.24)
logical,parameter ::r13=ieee_support_rounding (round_value=obj,x=232.32)

logical,parameter ::r14=ieee_support_rounding (round_value=obj)
logical,parameter :: r15 =ieee_support_rounding (obj)

logical,parameter :: r16 =ieee_support_rounding (obj,x=34.43)

res=ieee_support_rounding (ieee_up,x=3443.24)
if(res .neqv. r12) print*,"115"

res=ieee_support_rounding (round_value=obj,x=232.32)
if(res .neqv. r13) print*,"116"

res= ieee_support_rounding (round_value=obj)
if(res .neqv. r14) print*,"117"

res= ieee_support_rounding (obj)
if(res .neqv. r15) print*,"118"

res= ieee_support_rounding (obj,x=34.43)
if(res .neqv. r16) print*,"119"
print*,"pass"
end
