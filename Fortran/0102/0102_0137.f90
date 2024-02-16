program minlocs
implicit none
type ty
logical::l
end type ty
type(ty),parameter::back=ty(.true.)
integer,parameter::temp(5)=[1,7,1,9,1]
integer,parameter::constvar(1)=minloc(temp,1,mask=[.true.,.false.,.true.,.true.,.false.],kind=2,back=back%l)
integer::runvar(1)
runvar=minloc(temp,1,mask=[.true.,.false.,.true.,.true.,.false.],kind=2,back=back%l)
if(constvar(1).eq.runvar(1).and. constvar(1).eq.3)then
print*,"PASS"
else
print*,"FAIL"
end if
end program minlocs
