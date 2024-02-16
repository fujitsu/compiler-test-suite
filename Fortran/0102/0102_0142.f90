program minlocs
implicit none
type ty
logical::l
end type ty
type(ty),parameter::obj=ty(.true.)
integer,parameter::temp(3,2)=reshape([8,6,5,4,4,9],[3,2])
integer,parameter::constvar(2)=minloc(temp,mask=reshape([.true.,.false.,.true.,.true.,.false.,.true.],[3,2]),back=obj%l)
if(any(constvar.ne.[1,2]))print*,"100"
print*,"PASS"
end program minlocs
