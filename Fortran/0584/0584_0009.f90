use ieee_exceptions
type(ieee_flag_type),parameter ::obj= ieee_underflow
logical ::res
real ::x
logical,parameter ::r12=ieee_support_flag (ieee_overflow,x=3443.24)
logical,parameter ::r13=ieee_support_flag (flag=obj,x=232.32)

logical,parameter ::r14=ieee_support_flag (flag=obj)
logical,parameter :: r15 =ieee_support_flag (obj)

logical,parameter :: r16 =ieee_support_flag (obj,x=34.43)

res=ieee_support_flag (ieee_overflow,x=3443.24)
if(res .neqv. r12) print*,"115"

res=ieee_support_flag (flag=obj,x=232.32)
if(res .neqv. r13) print*,"116"

res= ieee_support_flag (flag=obj)
if(res .neqv. r14) print*,"117"

res= ieee_support_flag (obj)
if(res .neqv. r15) print*,"118"

res= ieee_support_flag (obj,x=34.43)
if(res .neqv. r16) print*,"119"
print*,"pass"
end
