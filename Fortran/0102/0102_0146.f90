program minlocs
implicit none
integer*8,parameter::temp(14)=[100,93,45,45,99,32,542,764321,232,321,32,21677,433,9874]
integer,parameter::constvar(1)=minloc(temp,back=.false.)
integer::runvar(1)
runvar=minloc(temp,back=.false.)
if(constvar(1).eq.runvar(1).and. constvar(1).eq.6)then
print*,"PASS"
else
print*,"FAIL"
end if
end program minlocs

