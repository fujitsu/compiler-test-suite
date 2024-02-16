complex(KIND = 16)::xx
complex(KIND = 8 )::yy
real :: rr
xx = (5.67,3.67)
yy = (3.67,6.67)

rr = DIM(xx%re,yy%re)
if(rr .ne. 2) print*,101
PRINT*,"PASS"
end


