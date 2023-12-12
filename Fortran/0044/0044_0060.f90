program pro
complex*32, parameter:: x=(1.0,2.0)
integer,parameter::z1= kind(ATANH(x))
    if(z1 .ne. 16) print*,101
print *, "pass"
end
