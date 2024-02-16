program minlocs
implicit none
type ty
logical::l
end type ty
type(ty),parameter::obj=ty(.true.)
integer,parameter::temp(2,2,2)=reshape([5,2,5,2,4,4,5,5],[2,2,2])
integer,parameter::constvar(3)=minloc(temp,back=obj%l)
if(any(constvar.ne.[2,2,1]))print*,"100"
print*,"PASS"
end program minlocs


