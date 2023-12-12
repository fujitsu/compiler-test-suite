program pro
real*8, parameter:: x=(1.0)
integer,parameter::z1= kind(ACOSH(x))
    if(z1 .ne. 8) print*,101
print *, "pass"
end
