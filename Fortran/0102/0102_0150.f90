program minlocs
implicit none
integer*4,parameter::temp(10)=[5,1,7,1,1,3,54546,224,7,100]
integer,parameter::constvar(1)=minloc(temp,1,back=.false.)
integer::runvar(1)
runvar=minloc(temp,1,back=.false.)
if(constvar(1).eq.runvar(1).and. constvar(1).eq. 2)then
print*,"PASS"
else
print*,"FAIL"
end if
end program minlocs
