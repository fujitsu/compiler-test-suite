integer :: a(4,4)
call sub(a(1:4,1:4))        
        contains
        subroutine sub(xx)
        integer :: xx(..)
        if(is_contiguous(xx) .NEQV. .TRUE.)print*,101
        print*,'PASS'
        end subroutine
end        
