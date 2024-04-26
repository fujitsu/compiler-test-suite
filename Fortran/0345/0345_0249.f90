      module mod1
      contains
        subroutine sub10
          print *,'pass 1'
        end subroutine
      end module

      module mod2
      contains
        subroutine sub10
          print *,'pass 2'
        end subroutine
      end module

      subroutine sub1
       use mod1
        call sub10
      end subroutine

      subroutine sub2
       use mod2
        call sub10
      end subroutine

      program main
        call sub1
        call sub2
        print *,'pass'
      end 
