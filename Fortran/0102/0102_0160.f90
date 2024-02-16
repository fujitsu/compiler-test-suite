integer,parameter::temp(3,2)=reshape([8,6,5,4,4,4],[3,2])
integer,parameter::constvar(2)=minloc(temp,dim=1,mask=reshape([.true.,.false.,.true.,.true.,.false.,.true.],[3,2]))
if(any(constvar.ne.[3,1])) print*,"101"
if(any(minloc(temp,dim=1,mask=reshape([.true.,.false.,.true.,.true.,.false.,.true.],[3,2])).ne.[3,1]))print*,"102"
print*,"PASS"
end
