      module mod2
       contains
       subroutine sub0
         print *,'pass 1'
       end subroutine
      end module

      module mod1
       contains
       subroutine sub1
        use mod2
         call sub0
         print *,'pass 2'
       end subroutine
      end module

      module mod0
       use mod1
       contains
       subroutine sub0
        call sub1
         print *,'pass 3'
       end subroutine
      end module

      subroutine sub0
        print *,'pass 4'
      end subroutine

      subroutine s0
       use mod0
        call sub0
      end subroutine

      subroutine s1
        call sub0
      end subroutine

      program main
       use mod0
        call s0
        call s1
        print *,'pass'
      end
