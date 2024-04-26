program main
        implicit none
        integer :: a 
        
        a=variable_declaration()

        contains
        
        function variable_declaration() 
        implicit none
        real :: variable_declaration

        double precision :: a0
        
        type(double precision)         :: a1

        
        variable_declaration = 1.5
        
        if(kind(a0) /= kind(a1)) print*,101

        print*,"pass"
        end function variable_declaration

end program main



