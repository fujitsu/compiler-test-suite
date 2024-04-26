integer*4,parameter::x(14) =[1,9,45,45,9,1212,3123,123,123,121211,1122,11211,12111,121211]
integer,parameter::k(1) = maxloc(x,back=.true.)
integer :: m(1) 
m = maxloc(x,back=.true.)
if(k(1).eq.m(1).and.k(1).eq.14)then
 print*,"PASS"
else
 print*,"FAIL"
end if
end
