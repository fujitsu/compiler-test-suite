logical,parameter,DIMENSION(2,2,2)::x=reshape((/.true.,.true.,.false.,.false.,.true.,.true.,.false.,.true./),(/2,2,2/))
logical,parameter::k = PARITY(x)
logical,parameter::k1(2,2) = PARITY(mask=x,dim=1)
logical,parameter::k2(2,2) = PARITY(x,dim=2)
logical,parameter::k3(2,2) = PARITY(x,dim=3)
if(k .neqv. .true.)print*,"100"
if(any(k1 .neqv. reshape([.false.,.false.,.false.,.true.],[2,2])))print*,"101"
if(any(k2 .neqv. reshape([.true.,.true.,.true.,.false.],[2,2])))print*,"102"
if(any(k3 .neqv. reshape([.false.,.false.,.false.,.true.],[2,2])))print*,"103"
print*,"PASS"
end

