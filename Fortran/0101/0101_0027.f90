integer,parameter::a(4)=[4,4,-6,4]
integer,parameter::constvar(1)=findloc(a,value=4,back=PARITY([.true.,.true.,.false.,.true.]))
if(constvar(1) .ne. 4)print*,"100"
print*,"PASS"
end
