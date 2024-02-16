logical,parameter::constvar=PARITY(MASK=PARITY(reshape((/.true.,.true.,.true.,.true.,.false.,.true./),(/2,3/)),dim=1),dim=1)
if(constvar .neqv. .true.)print*,"100"
print*,"PASS"
end
