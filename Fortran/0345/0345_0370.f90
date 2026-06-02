      module mod
      contains
        subroutine sub(i)
          integer(4),dimension(1)::i
            i=i+1
          call subsub(i)
        end subroutine
        subroutine subsub(i)
          integer(4),dimension(1),intent(inout),volatile::i
            i=i+2
        end subroutine
      end module

      program main
       use mod
        integer(4),dimension(1)::i
        call sub(i)
        print *,'pass'
      end program
