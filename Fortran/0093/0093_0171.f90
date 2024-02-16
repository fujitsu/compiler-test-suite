complex::xx
real :: rr
xx = (5.67,3.67)

rr = DIM(xx%re,xx%im)
if(rr .ne. 2) print*,101
PRINT*,"PASS"
end


