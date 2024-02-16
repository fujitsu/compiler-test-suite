complex::cmp
real::rr
cmp = (2.5430806,1.5430806)
rr = ACOSH(cmp%im)
if(rr .ne. 0.999999940) print*,101
PRINT*,"PASS"
end
 
