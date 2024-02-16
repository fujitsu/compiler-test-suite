complex::cmp
real::rr
cmp = (0.54030231,0.53030231)
rr = ACOS(cmp%re)
if(rr .ne. 0.999999940) print*,101,rr
PRINT*,"PASS"
end
 
