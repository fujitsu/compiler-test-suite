integer::a(2,3)

        call sub (a)
        contains
         subroutine sub(s)
          integer::s(..)
         integer :: z(4),y(2,2)
         z=(/ubound(s),ubound(s)/)
        if(z(1) /= 2)print*,101
        if(z(2) /= 3)print*,102
        if(z(3) /= 2)print*,103
        if(z(4) /= 3)print*,104

          y=reshape([ubound(s),ubound(s)],[2,2])

        if(y(1,1) /= 2)print*,201
        if(y(1,2) /= 2)print*,202
        if(y(2,1) /= 3)print*,203
        if(y(2,2) /= 3)print*,204

        print*,"PASS"
            
       
        end subroutine


        end
