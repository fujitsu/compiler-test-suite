      function ifunc(i)
        integer(4),dimension(1),intent(inout),volatile::i
          i=i+1
          ifunc=1
      end function

      program main
       interface
        function ifunc(i)
        integer(4),dimension(1),intent(inout),volatile::i
        end function
       end interface
        integer(4),dimension(1)::i
        k = ifunc(i)
        print *,'pass'
      end program
