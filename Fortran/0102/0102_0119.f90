integer,parameter::x(-3:1) = [1,9,45,45,9]
integer,parameter::k(1) = maxloc(x,mask=[.true.,.false.,.true.,.false.,.true.],kind=8,back=.true.)
integer :: m(1) 
m = maxloc(x,mask=[.true.,.false.,.true.,.false.,.true.],kind=8,back=.true.)
if(k(1).eq.m(1).and.k(1).eq.3)then
 print*,"PASS"
else
 print*,"FAIL"
end if
end
