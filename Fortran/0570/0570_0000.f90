program pro
real(kind=16), parameter:: x=10.0
integer,parameter::z1= kind(ERFC_SCALED(x))
    if(z1 .ne. 16) print*,101
print *, "pass"
end