      subroutine sub(i)
        integer(4),dimension(1),intent(inout),volatile::i
          i=i+1
      end subroutine

      program main
       interface
        subroutine sub(i)
        integer(4),dimension(1),intent(inout),volatile::i
        end subroutine
       end interface
        integer(4),dimension(1)::i
        call sub(i)
        print *,'pass'
      end program
