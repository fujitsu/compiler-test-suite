program minlocs
implicit none
type ty
logical::l
end type ty
type(ty),parameter::obj=ty(.true.)
integer,parameter::temp(3,2,2)=reshape([1,9,30,40,6,1,7,8,9,7,11,2],[3,2,2])
integer,parameter::constvar(3,2)=minloc(temp,dim=3,back=obj%l)
if(any(constvar.ne.reshape([1,2,2,2,1,1],[3,2])))print*,"100"
print*,"PASS"
end program minlocs
