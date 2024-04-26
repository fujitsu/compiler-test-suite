      module mod
       contains
        subroutine sub(i)
         call xxx(i)
         contains
          subroutine xxx(i)
            i=i+1
            print *,"pass1"
          end subroutine
        end subroutine
      end module

      program main
       use mod
        i=0
        call sub(i)
        print *,'pass'
      end program
