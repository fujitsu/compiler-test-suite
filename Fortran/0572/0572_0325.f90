integer::a(3,3)
        call sub (a)
        contains
         subroutine sub(s)
          integer::s(..)
         integer :: y(2),z(2)
        z=4
        y=4
        z=shape(s) + y
        if(any(z/=7) )print*,101
        z=0 
        z=y+shape(s)
        if(any(z/=7) )print*,102
        z=0
        z=shape(s)+shape(s)
        if(any(z/=6) )print*,102
        print*,"PASS"
        

        end subroutine

        end
