integer,parameter::x(5) = [1,9,45,45,9]
integer,parameter::k(1)=FINDLOC (x, VALUE=9, BACK=bgt(6,5)) 
if(k(1).eq.5)then
 print*,"PASS"
else
 print*,"FAIL"
end if
end
