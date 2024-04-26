integer*4,parameter::x(10) = [1,9,45,45,9,23323,31241,4444414,41414,4444414]
integer,parameter::k(1) = maxloc(x, dim=1, mask=.true., kind=4, back=.false.)
integer::m(1) 
m= maxloc(x, dim=1, mask=.true., kind=4, back=.false.)
if(k(1).eq.m(1).and.k(1).eq.8)then
 print*,"PASS"
else
 print*,"FAIL"
end if 
end
