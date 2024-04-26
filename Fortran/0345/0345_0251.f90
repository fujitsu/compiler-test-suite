      module mod0
       contains
        subroutine sub1_0
        end subroutine
      end module

      module mod1
       use mod0
       contains
        subroutine sub2_1
          call sub1_0
        end subroutine
        subroutine sub1_1
          call sub2_1
        end subroutine
      end module

      program main
       use mod1
        call sub1_1
        print *,'pass'
      end
