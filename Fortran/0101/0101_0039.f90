type ty
logical::a(2,3)
end type ty
type(ty),parameter::obj=ty(reshape((/.true.,.true.,.true.,.true.,.false.,.true./),(/2,3/)))
logical,parameter::constvar=PARITY(obj%a)
logical,parameter::constvar1(3)=PARITY(obj%a,1)
logical,parameter::constvar2(2)=PARITY(obj%a,2)
if(constvar .neqv. .true.)print*,"100"
if(any(constvar1 .neqv. [.false.,.false., .true.]))print*,"101"
if(any(constvar2 .neqv. [.false.,.true.]))print*,"102"
PRINT*,"PASS"
end
