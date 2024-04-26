      module mod
       contains
        subroutine sub()
         integer(4)::a(251)
        end subroutine
      end module

      program main
       use mod
        call sub
        print *,'pass'
      end
