integer::a(2,3)
        call sub (a)
        contains
         subroutine sub(s)
          integer::s(..)
          integer :: y(2),x(2)
          y=1
          x=shape(s) + y
          if(x(1)/= 3)print*,101
          if(x(2)/= 4)print*,102
          print*,"PASS"
        end subroutine

        end
