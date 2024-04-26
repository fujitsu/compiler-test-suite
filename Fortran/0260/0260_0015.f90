program main
        implicit none

        interface 
        subroutine variable_declaration
        type(double precision)                :: a1

        end subroutine variable_declaration
        end interface 

        call variable_declaration

print*,"pass"
end program main

subroutine variable_declaration
        implicit none

        double precision :: a0
        type(double precision)       :: a1

        
        if(kind(a0) /= kind(a1)) print*,101
end subroutine variable_declaration



