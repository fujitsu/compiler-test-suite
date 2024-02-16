logical(kind=1),parameter::a(4)=[.true.,.true.,.false.,.false.]
logical(kind=2),parameter::b(4)=[.true.,.true.,.false.,.false.]
logical(kind=4),parameter::c(4)=[.true.,.true.,.false.,.false.]
logical(kind=8),parameter::d(4)=[.true.,.true.,.false.,.false.]
integer,parameter::constvar=kind(PARITY(a))
integer,parameter::constvar1=kind(PARITY(b,dim=1))
integer,parameter::constvar2=kind(PARITY(mask=c,dim=1))
integer,parameter::constvar3=kind(PARITY(d))
if(constvar .ne. 1)print*,"100"
if(constvar1 .ne. 2)print*,"101"
if(constvar2 .ne. 4)print*,"102"
if(constvar3 .ne. 8)print*,"103"
print*,"PASS"
end
