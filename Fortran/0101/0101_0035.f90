logical,parameter::a(*)=[.true.,.true.,.false.,.false.]
logical,parameter::b(*)=[.true.,.true.,.true.,.false.]
logical,parameter::constvar=PARITY(a)
logical,parameter::constvar2=PARITY(a,dim=1)
logical,parameter::constvar1=PARITY(b)
if(constvar .neqv. .false.)print*,"101"
if(constvar2 .neqv. .false.)print*,"102"
if(constvar1 .neqv. .true.)print*,"103"
print*,"PASS"
end
