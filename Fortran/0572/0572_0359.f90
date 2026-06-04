integer :: a(3:5,5:10)
call sub(a)        
        contains
        subroutine sub(xx)
        integer :: xx(..)
        if(lbound(xx,1).ne.1)print*,"101"
        if(lbound(xx,2).ne.1)print*,"102"
        print*,"PASS"
        end subroutine
end        
