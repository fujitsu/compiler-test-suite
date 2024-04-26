real,parameter::x(5) = [2.0,7.0,9.4,5.6,2.7]
integer,parameter::k(1) = maxloc(x, dim=1, mask=.true., kind=4, back=.true.)
integer :: m(1) 
m = maxloc(x, dim=1, mask=.true., kind=4, back=.true.)
if(k(1).eq.m(1).and.k(1).eq.3)then
 print*,"PASS"
else
 print*,"FAIL"
end if
end
