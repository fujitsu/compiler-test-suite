program main
        implicit double precision (x)
        implicit type(double precision)          (y)
        y=11.111 
        if(kind(x) /= kind(y)) print*,101
        if(y /=11.111) print*,102
print*,"pass"
end program main

