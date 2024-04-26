      module moda
       contains
        subroutine sub
          call bar
          print *,'pass 3'
        end subroutine

        subroutine foo
         entry bar
          call you
          print *,'pass 2'
        end subroutine

        subroutine you
          print *,'pass 1'
        end subroutine
      end 

      subroutine s1
       use moda
        call sub
      end

      subroutine sub
        call bar
        print *,'pass 3'
      end subroutine

      subroutine foo
       entry bar
        call you
        print *,'pass 2'
      end subroutine

      subroutine you
        print *,'pass 1'
      end subroutine

      subroutine s2
       call sub
      end

      program main
        call s1
        call s2
        print *,'pass'
      end program
