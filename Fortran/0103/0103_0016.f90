integer*4,parameter::x(5) = [1,4,45,4,9]
integer*4,parameter::k(1)=FINDLOC(x, VALUE=DSHIFTL(1,2,2), BACK=.TRUE.)
if(k(1).eq.4)then
 print*,"PASS"
else
 print*,"FAIL"
end if
end
