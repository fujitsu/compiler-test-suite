integer,parameter,DIMENSION(2,3)::B=reshape((/1,2,3,4,5,6/),(/2,3/))
integer,parameter,DIMENSION(2,3)::C=reshape((/0,7,3,4,5,8/),(/2,3/))
logical,parameter::constvar1(3)=PARITY(B /= C,DIM=1)
logical,parameter::constvar2(2)=PARITY(B /= C,DIM=2)
if(any(constvar1 .neqv. [.false.,.false.,.true.]))print*,"101"
if(any(constvar2 .neqv. [.true.,.false.]))print*,"102"
print*,"PASS"
end
