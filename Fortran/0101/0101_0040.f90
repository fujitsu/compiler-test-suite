program parity
implicit none
logical::constvar
logical::parity_check
constvar = parity_check()
if(constvar .neqv. .false.)print*,"100"
print*,"PASS"
end program parity

function parity_check()
implicit none
logical,parameter::a(4)=[.true.,.true.,.false.,.false.]
logical::parity_check
logical,parameter::r=PARITY(a)
parity_check=r
end function parity_check
