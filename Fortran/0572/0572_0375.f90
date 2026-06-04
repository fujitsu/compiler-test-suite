integer :: a(3,3)
call sub(a)        
        contains
        subroutine sub(xx)
        integer :: xx(..)
        if(any(shape(xx) /= 3)) print*, "101"
        print*, "PASS"
        end subroutine
end        
