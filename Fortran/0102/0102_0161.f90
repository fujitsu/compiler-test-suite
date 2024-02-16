integer,parameter::x(2,2)=reshape([1,2,3,4],[2,2])
integer,parameter::constvar(2)=minloc(x,dim=1,mask=.true.,kind=4,back=.false.)
if(any(constvar .ne. [1,1]))print*,"101"
print*,"PASS"
end
