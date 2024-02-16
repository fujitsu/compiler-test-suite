integer*4,parameter::x(-5:4) = [1,9,45,45,1,1212,141,41454,5515,6322]
integer,parameter::k(1) = maxloc(x, dim=1, mask=x>9, kind=4, back=.true.)
integer,parameter::p(1) = maxloc(x, dim=1, mask=x<9, kind=4, back=.true.)
integer ::m(1)  
integer ::n(1) 
m =maxloc(x, dim=1, mask=x>9, kind=4, back=.true.)
n = maxloc(x, dim=1, mask=x<9, kind=4, back=.true.)

if(k(1).eq.m(1).and.k(1).eq.8)then
 print*,"PASS"
else
 print*,"FAIL"
end if

if(p(1).eq.n(1).and.p(1).eq.5)then 
 print*,"PASS"
else
 print*,"FAIL"
end if 
end

