program minlocs
implicit none
type ty
logical::l
end type ty
type(ty),parameter::obj=ty(.true.)
integer*4,parameter::temp(9)=[2534,262638,-1,0,1,11,1,1,0]
integer,parameter::constvar(1)=minloc(temp,back=obj%l)
integer::runvar(1)
runvar=minloc(temp,back=obj%l)
if(constvar(1).eq.runvar(1).and. constvar(1).eq.3)then
print*,"PASS"
else
print*,"FAIL"
end if
end program minlocs

