integer::a(2)
        call sub (a)
        contains
         subroutine sub(s)
          integer::s(..)
         call sub2(shape(s))
        end subroutine

        subroutine sub2(d)
         integer::d(2,2)
         if(d(1,1)/=2)print*,101
        print*,"PASS"
        end subroutine sub2 

        end
