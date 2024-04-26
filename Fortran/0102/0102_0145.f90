program minlocs
implicit none
type ty
logical::l
end type ty
type(ty),parameter::obj=ty(.false.)
integer,parameter::temp(3,2)=reshape([5,6,5,8,4,9],[3,2])
integer,parameter::constvar(2)=minloc(temp,dim=1,mask=temp>4,back=obj%l)
if(any(constvar.ne.[1,1]))print*,"100"
print*,"PASS"
end program minlocs
