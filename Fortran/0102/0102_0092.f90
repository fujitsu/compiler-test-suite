integer,parameter::a(4)=[-6,-1,-6,4]
integer,parameter::constvar(1)=findloc(a,-6,back=BLT(8,8))
if(constvar(1) .ne. 1)print*,"100"
print*,"PASS"
end
