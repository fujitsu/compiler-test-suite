      module mod
      contains
        function ifunc(i)
          integer(4),dimension(1),intent(inout),volatile::i
            i=i+1
            ifunc=1
        end function
      end module

      program main
       use mod
        integer(4),dimension(1)::i
        k = ifunc(i)
        print *,'pass'
      end program
