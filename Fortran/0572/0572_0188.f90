integer::a(2,3)

        call sub (a)
        contains
         subroutine sub(s)
          integer::s(:,:)
         integer :: z(2)
        z=(/shape(s)/)
       if(z(1)/= 2)print*,102,z
       if(z(2)/= 3)print*,103,z
       print*,"PASS"
        end subroutine
        end
