integer,parameter::a(4)=[1,-3,-1,1]
integer,parameter::b(4)=[0,4,-1,-0]
logical,parameter::constvar(4)=BLT(a,b)
if(constvar(1) .neqv. .FALSE.)print*,'100'
if(constvar(2) .neqv. .FALSE.)print*,'101'
if(constvar(3) .neqv. .FALSE.)print*,'102'
if(constvar(4) .neqv. .FALSE.)print*,'103'
print*,"PASS"
end
