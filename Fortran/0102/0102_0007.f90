module m
integer,parameter::a=b'11111111111111111111111111111101'
integer,parameter::b=b'11111111111111111111111111111100'
logical,parameter::constvar=BGE(a,b)
end module

use m
if(constvar .neqv. .true.) print*,"100"
print*,"PASS"
end program
