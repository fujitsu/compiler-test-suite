integer :: a(5)
call sub(a)        
        contains
        subroutine sub(xx)
        integer :: xx(..)
        integer :: y
        y =5+ kind(xx)
        if(y /= 9)print*,101
        print*,"PASS"
        end subroutine
end        
