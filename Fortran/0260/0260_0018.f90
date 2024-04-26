program main
        implicit none

        call variable_declaration
        
        contains
        subroutine variable_declaration
                double precision :: a0

                type(double precision)       :: a1

        
                if(kind(a0) /= kind(a1)) print*,101

                print*,"pass"
        end subroutine variable_declaration
        
end program main



