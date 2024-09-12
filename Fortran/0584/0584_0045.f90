use ieee_arithmetic
type(ieee_round_type),parameter ::obj= ieee_up
logical ::res
logical,parameter ::r14=ieee_support_rounding (round_value=obj)
logical,parameter :: r15 =ieee_support_rounding (obj)

res= ieee_support_rounding (round_value=obj)
if(res .neqv. r14) print*,"117"

res= ieee_support_rounding (obj)
if(res .neqv. r15) print*,"118"

print*,"pass"
end
