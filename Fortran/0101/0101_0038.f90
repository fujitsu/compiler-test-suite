module m
logical,parameter::a(4)=[.true.,.true.,.false.,.false.]
logical,parameter::constvar=PARITY(a)
logical,parameter::constvar1=PARITY(a,dim=1)
end module

use m
if(constvar .neqv. .false.)print*,'100'
if(constvar1 .neqv. .false.)print*,'101'
print*,"PASS"
end

