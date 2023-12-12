program pro
real*8, parameter:: x=(0.756454354)
integer,parameter::z1= kind(ATANH(x))
    if(z1 .ne. 8) print*,101
print *, "pass"
end
