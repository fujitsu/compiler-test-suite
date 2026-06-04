integer :: a(4,4)
call sub(a(1:4,1:4:2))        
        contains
        subroutine sub(xx)
        integer :: xx(..)
        if(is_contiguous(xx) .NEQV. .FALSE.)print*,101
        print*,'PASS'
        end subroutine
end        
