integer,parameter::x(5) = [1,5,45,5,9]
integer,parameter::k(1)=FINDLOC (x, VALUE=DSHIFTR(64,20,2), BACK=.TRUE.)
if(k(1).eq.4)then
 print*,"PASS"
else
 print*,"FAIL"
end if
end
