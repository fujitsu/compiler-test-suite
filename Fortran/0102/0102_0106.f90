integer*4,parameter::x(14) =[1,9,45,45,9,321,542,764321,232,321,764321,21677,433,9874]
integer,parameter::k(1) = maxloc(x, mask=.true., kind=4, back=.true.)
integer::l(1) 
l = maxloc(x, mask=.true., kind=4, back=.true.)
if(k(1).eq.l(1).and.k(1).eq.11)then
 print*,"PASS"
else
 print*,"FAIL"
end if
end
