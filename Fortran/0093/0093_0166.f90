complex::cmp
real::rr
cmp = (3.45,7.56)
rr = ABS(int(cmp%im))
if(rr .ne. 7) print*,101
PRINT*,"PASS"

end
