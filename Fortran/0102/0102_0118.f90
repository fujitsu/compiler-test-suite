logical,parameter::back(2)=[.true.,.false.]
integer*4,parameter::x(10) =[1,21212,54332,31231,3313123,3121,3313123,133413,66645,311133]
integer,parameter::k(1) = maxloc(x,back=back(1))
integer ::m(1) 
m = maxloc(x,back=back(1))
if(k(1).eq.m(1).and.k(1).eq.7)then
 print*,"PASS"
else
 print*,"FAIL"
end if
end

