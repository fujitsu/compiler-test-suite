integer :: a
call sub(a)
        contains
        pure subroutine sub(x)
        integer,intent(in) :: x
        error stop 5
        end subroutine
        end
