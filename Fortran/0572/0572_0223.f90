character (len = 5) :: ch 
ch = "Hello"
call sub(ch(2:3))
        contains
        subroutine sub(x)
        character(len = *) :: x(..)
        if(len(x) /= 2) print*,"101"

        print*,"PASS"
        end subroutine
        end
