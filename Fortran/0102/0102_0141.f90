program minlocs
implicit none
type ty
logical::l
end type ty
type(ty),parameter::obj=ty(.true.)
integer,parameter::temp(3,2)=reshape([5,6,5,8,4,9],[3,2])
integer,parameter::constvar(2)=minloc(temp,dim=1,back=obj%l)
if(any(constvar.ne.[3,2]))print*,"100"
print*,"PASS"
end program minlocs
