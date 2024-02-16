module m
integer,parameter::a=o'07'
integer,parameter::b=b'101'
integer,parameter::c=z'A'
logical,parameter::constvar=BLT(a,b)
logical,parameter::constvar1=BLT(b,c)
logical,parameter::constvar2=BLT(c,a)
end module

use m
if(constvar .neqv. .FALSE.)print*,'100'
if(constvar1 .neqv. .TRUE.)print*,'101'
if(constvar2 .neqv. .FALSE.)print*,'102'
print*,"PASS"
end

