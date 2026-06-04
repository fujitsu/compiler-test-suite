integer :: a(3,5)
a =12
call sub(a)        
        contains
        subroutine sub(xx)
        integer :: xx(..)
        integer :: b(2)
        b = lbound(xx)
        if(b(1).ne.1)print*,"101"
        if(b(2).ne.1)print*,"102"
        print*,"PASS"
        end subroutine
end        
