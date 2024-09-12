call sub

end 

subroutine sub()

use ieee_exceptions
type(ieee_flag_type),parameter ::obj= ieee_underflow

logical ::res
logical ,parameter ::r14 =ieee_support_halting (flag=obj)
logical ,parameter :: r15 =ieee_support_halting (obj)

res= ieee_support_halting (flag=obj)
if(res .neqv. r14) print*,"117"

res= ieee_support_halting (obj)
if(res .neqv. r15) print*,"118"

print*,"pass"
end subroutine sub
