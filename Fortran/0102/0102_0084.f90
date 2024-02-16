program bltcheck1
implicit none
logical::constvar
logical::blt_check
constvar = blt_check()
if(constvar .neqv. .FALSE.)print*,"100"
print*,"PASS"
end program bltcheck1

function blt_check() 
implicit none
integer,parameter::a=10
integer,parameter::b=10
logical::blt_check
logical,parameter::r=BLT(a,b)
blt_check=r
end function blt_check
