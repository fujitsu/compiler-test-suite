program minlocs
implicit none
integer,parameter::temp(-3:1)=[5,7,1,9,1]
logical,parameter::back(-3:-2)=[.true.,.false.]
integer,parameter::constvar(1)=minloc(temp,back=back(-3))
integer::runvar(1)
runvar=minloc(temp,back=back(-3))
if(constvar(1).eq.runvar(1).and.constvar(1).eq.5)then
print*,"PASS"
else
print*,"FAIL"
end if
end program minlocs

