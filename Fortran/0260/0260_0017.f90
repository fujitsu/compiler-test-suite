module variable_declaration
                
                double precision :: a0

                type(double precision)                :: a1

                contains 

                subroutine variable_declare

                double precision :: a0

                type(double precision)                :: a1

                
                if(kind(a0) /= kind(a1)) print*,"101"
                end subroutine variable_declare

end module variable_declaration

program main
use variable_declaration

        implicit none

        if(kind(a0) /= kind(a1)) print*,101

        call variable_declare

        print*,"pass"
 
end program main



