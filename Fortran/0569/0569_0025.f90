integer :: a(3)=[1,2,3]
call sub(a)        
        print*,"PASS"
        contains
        impure elemental subroutine sub(x)
        integer,intent(in) :: x
        if(.not.(x /= 1 .or. x /= 2 .or. x /= 3) ) print*, 101
        end subroutine
        end
