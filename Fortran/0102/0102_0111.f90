character,parameter::x(5) = ['e','f','d','d','f']
integer,parameter::k(1) = maxloc(x, dim=1,mask=[.true.,.true.,.true.,.true.,.false.], kind=4, back=.true.)
integer :: m(1) 
m = maxloc(x, dim=1, mask=[.true.,.true.,.true.,.true.,.false.], kind=4, back=.true.)
if(k(1).eq.m(1).and.k(1).eq.2)then
 print*,"PASS"
else
 print*,"FAIL"
end if
end
