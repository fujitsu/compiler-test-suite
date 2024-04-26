logical,parameter::constvar(5)=BGE([1,-3,-1,1,0],[0,4,-1,-0,-1])
if(constvar(1) .neqv. .TRUE.)print*,'100'
if(constvar(2) .neqv. .TRUE.)print*,'101'
if(constvar(3) .neqv. .TRUE.)print*,'102'
if(constvar(4) .neqv. .TRUE.)print*,'103'
if(constvar(5) .neqv. .FALSE.)print*,'104'
print*,"PASS"
end
