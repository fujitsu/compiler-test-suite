integer::a(2,3)

        call sub (a)
        contains
         subroutine sub(s)
          integer::s(..)
         integer :: z(4),y(2,2)
         z=(/lbound(s),lbound(s)/)
        if(any(z /= 1))print*,101

          y=reshape([lbound(s),lbound(s)],[2,2])
        if(any(y /= 1))print*,101


        print*,"PASS"
            
       
        end subroutine


        end
