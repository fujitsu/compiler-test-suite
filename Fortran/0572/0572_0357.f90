integer :: a(3:5)
call sub(a)        
        contains
        subroutine sub(xx)
        integer :: xx(..)
        if(any(lbound(xx) /= 1)) print*,"101"
        print*, "PASS"
        end subroutine
end        
