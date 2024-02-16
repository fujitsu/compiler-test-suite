logical,parameter::a(3:2)=.true.
logical,parameter::a1(3:2,2:3)=.false.
logical,parameter::b=PARITY(a)
logical,parameter::c=PARITY(a,dim=1)
logical,parameter::b1=PARITY(a1)
logical,parameter::c1(2)=PARITY(a1,dim=1)
if(b .neqv. .false.)print*,"100"
if(c .neqv. .false.)print*,"101"
if(b1 .neqv. .false.)print*,"102"
if(any(c1 .neqv. [.false.,.false.]))print*,"103"
print*,"PASS"
end
