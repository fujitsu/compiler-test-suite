logical,parameter::constvar(4)=BGT([1,-3,-1,1],[0,4,-1,-0])
if(constvar(1) .neqv. .TRUE.)print*,'100'
if(constvar(2) .neqv. .TRUE.)print*,'101'
if(constvar(3) .neqv. .FALSE.)print*,'102'
if(constvar(4) .neqv. .TRUE.)print*,'103'
print*,"PASS"
end
