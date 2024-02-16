logical,parameter::constvar=PARITY(dim=1,mask=[.true.,.true.,.true.,.false.])
if(constvar .neqv. .true.)print*,"100"
print*,"PASS"
end

