logical,parameter::back=.true.
integer*4,parameter::x(7) = [313131,1,9,122,122232,313131,19378]
integer,parameter::k(1) = maxloc(x,back=back)
integer::m(1) 
m = maxloc(x,back=back)
if(k(1).eq.m(1).and.k(1).eq.6)then
 print*,"PASS"
else
 print*,"FAIL"
end if
end
