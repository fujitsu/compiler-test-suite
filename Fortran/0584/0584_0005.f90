use ieee_exceptions
type(ieee_flag_type),parameter ::obj= ieee_overflow
logical ::res
logical,parameter ::r14=ieee_support_flag (flag=obj)
logical,parameter :: r15 =ieee_support_flag (obj)

res= ieee_support_flag (flag=obj)
if(res .neqv. r14) print*,"117"

res= ieee_support_flag (obj)
if(res .neqv. r15) print*,"118"

print*,"pass"
end
