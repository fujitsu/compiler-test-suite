program pro
real(kind=16), parameter:: x=1.0
integer,parameter::z1= kind(BESSEL_Y1(x))
    if(z1 .ne. 16) print*,101
print *, "pass"
end
