program minlocs
implicit none
integer,parameter::temp(3,2)=reshape([5,1,5,8,4,9],[3,2])
integer,parameter::constvar(2)=minloc(temp,.true.,4,back=.false.)
if(any(constvar.ne.[2,1]))print*,"100"
print*,"PASS"
end program minlocs
