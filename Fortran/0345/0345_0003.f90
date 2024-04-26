      module mod
       contains
        subroutine sub1(i) 
          call sub2(i)
        end subroutine
        subroutine sub2(i)
          i=i+1
        end subroutine
      end module

       use mod
        i=1
        call sub1(i)
        if (i/=2) print *,'error'
        print *,'pass'
      end
