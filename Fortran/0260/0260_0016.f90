program main
        implicit none
        
        double precision :: a0

        type(double precision)        :: a1

         
        if(kind(a0) /= kind(a1)) print*,101

print*,"pass"
end program main



