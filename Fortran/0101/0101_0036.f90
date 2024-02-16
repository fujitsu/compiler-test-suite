logical,parameter,DIMENSION(2,3)::B=reshape((/.true.,.true.,.true.,.true.,.false.,.true./),(/2,3/))
logical,parameter,DIMENSION(3,3)::B2=reshape((/.true.,.true.,.true.,.true.,.false.,.true.,.true.,.false.,.true./),(/3,3/))
logical,parameter,DIMENSION(9)::B3=reshape((/.true.,.true.,.true.,.true.,.false.,.true.,.true.,.false.,.true./),(/9/))
logical,parameter,DIMENSION(9)::B4=reshape((/.false.,.false.,.false.,.false.,.false.,.false.,.false.,.false.,.false./),(/9/))
integer,parameter::l(2) =[1,3]
logical,parameter::constvar=PARITY(B)
logical,parameter::constvar1(*)=PARITY(B,dim=1)
logical,parameter::constvar2(*)=PARITY(B,dim=2)
logical,parameter::constvar3(3)=PARITY(B2,dim=1)
logical,parameter::constvar4(3)=PARITY(B2,dim=2)
logical,parameter::constvar5(2)=PARITY(B2(1:3:2,1:3:2),dim=2)
logical,parameter::constvar6(2)=PARITY(B2(l,l),dim=1)
logical,parameter::constvar7 =PARITY(B3,dim=2-1)
logical,parameter::constvar8 =PARITY(B3)
logical,parameter::constvar9 =PARITY(B4,dim=2-1)
logical,parameter::constvar10 =PARITY(B4)
logical,parameter::constvar11 =PARITY(B4(1:9:2))
if(constvar .neqv. .true.)print*,"100"
if(any(constvar1 .neqv. [.false.,.false., .true.]))print*,"101"
if(any(constvar2 .neqv. [.false.,.true.]))print*,"102"
if(any(PARITY(B2,dim=1).neqv.constvar3))print*,"104"
if(any(PARITY(B2,dim=2).neqv.constvar4))print*,"105"
if(any(PARITY(B2(1:3:2,1:3:2),dim=2).neqv.constvar5))print*,"106"
if(any(PARITY(B2(l,l),dim=1).neqv.constvar6))print*,"107"
if(PARITY(B3,dim=2-1).neqv.constvar7)print*,"108"
if(PARITY(B3).neqv.constvar8)print*,"109"
if(PARITY(B4,dim=2-1).neqv.constvar9)print*,"108"
if(PARITY(B4).neqv.constvar10)print*,"109"
if(constvar11.neqv.constvar11)print*,"110"
PRINT*,"PASS"
end

