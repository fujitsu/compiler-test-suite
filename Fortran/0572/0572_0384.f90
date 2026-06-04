integer :: a(3,3)
call sub(a)        
        contains
        subroutine sub(xx)
        integer :: xx(..)
        integer :: b(2)
        b = ubound(xx)
        if(any(b /= 3)) print*,"101"
        print*,"PASS"
        end subroutine
end        
