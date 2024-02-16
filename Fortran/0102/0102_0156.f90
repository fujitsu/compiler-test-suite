program minlocs
implicit none
type ty
logical::l
end type ty
type(ty),parameter::obj=ty(.true.)
integer,parameter::temp(3,2)=reshape([8,5,5,4,4,8],[3,2])
integer,parameter::constvar(2)=minloc(temp,back=obj%l)
if(any(constvar.ne.[2,2]))print*,100
print*,"PASS"
end program minlocs

