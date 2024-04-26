program pro
real(kind=16), parameter:: x=5.0
integer,parameter::z1= kind(LOG_GAMMA(x))
    if(z1 .ne. 16) print*,101
print *, "pass"
end
