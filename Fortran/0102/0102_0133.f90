integer,parameter::x(2,2)=reshape([1,2,3,4],[2,2])
integer,parameter::constvar(2)=maxloc(x,dim=1,mask=.true.,kind=4,back=.false.)
if (any(constvar .ne. [2,2]))print*,"101"
print*,"PASS"
end
