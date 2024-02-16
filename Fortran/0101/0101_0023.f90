logical,parameter,DIMENSION(2,3)::B=reshape((/.true.,.true.,.true.,.true.,.false.,.true./),(/2,3/))
logical,parameter::constvar=PARITY([.true.,.true.,.true.,.false.])
logical,parameter::constvar1(3)=PARITY(B,DIM=1)
logical,parameter::constvar2(2)=PARITY(B,DIM=2)
if(constvar .neqv. .true.)print*,"100"
if(any(constvar1 .neqv. [.false.,.false.,.true.]))print*,"101", constvar1
if(any(constvar2 .neqv. [.false.,.true.]))print*,"102", constvar2
print*,"PASS"
end
