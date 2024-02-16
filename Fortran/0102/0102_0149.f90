program minlocs
implicit none
character,parameter::temp(5)=['f','c','a','e','a']
integer,parameter::constvar(1)=minloc(temp,dim=1,mask=[.true.,.true.,.true.,.true.,.true.],back=.true.)
integer::runvar(1)
runvar=minloc(temp,dim=1,mask=.true.,back=.true.)
if(constvar(1).eq.runvar(1).and. constvar(1).eq.5)then
print*,"PASS"
else
print*,"FAIL"
end if
end program minlocs

