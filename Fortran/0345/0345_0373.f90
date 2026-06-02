      module mod
      interface
       subroutine sub(i)
        integer(4),dimension(1),volatile::i
       end subroutine
      end interface
      contains
        function ifunc(i)
          integer(4),dimension(1),volatile::i
            i=i+1
            call sub(i)
            ifunc=1
        end function
      end module

      subroutine sub(i)
        integer(4),dimension(1),volatile::i
          i=i+2
      end subroutine

      program main
       use mod
        integer(4),dimension(1)::i
        k = ifunc(i)
        print *,'pass'
      end program
