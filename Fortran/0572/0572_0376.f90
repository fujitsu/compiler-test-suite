integer :: a(5,5,5,5)
call sub(a)        
        contains
        subroutine sub(xx)
        integer :: xx(..)
        integer :: b(4)
        b = shape(xx)
        if(any(b /= 5)) print*, "101"
        print*, "PASS"
        end subroutine
end        
