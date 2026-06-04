integer::a(5,5)
        call sub (a)
        contains
         subroutine sub(s)
          integer::s(..)
         integer::x(2)
         integer :: y(2,2),z(2)
        y=1
        z=1
        x=z+shape(s) + shape(y)
        if(any(x /= 8))print*,101
        x= shape(s)+z+shape(y)+2
        if(any(x /= 10))print*,102
        print*,"PASS"
        end subroutine

        end
