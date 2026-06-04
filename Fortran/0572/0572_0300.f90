integer::x(10)
        x =20
        call sub(x(3:4))
        contains
        subroutine sub(y)
        integer::y(..)
        if(loc(y).ne.loc(x(3:4)))print*,"101"
        print*,"pass"
        end subroutine
        end
