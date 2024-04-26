      module mod
      contains
        function ifun(a)
          integer(4),dimension(:)::a
            a=a+1
            ifun=1
        end function
      end module

      program main
       use mod
        integer(4),dimension(5)::a
          k = ifun(a)
        print *,'pass'
      end  program
