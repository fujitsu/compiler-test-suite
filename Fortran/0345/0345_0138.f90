      function ifun1(a)
        integer(4),dimension(:)::a
          a=a+1
          ifun1=1
      end function

      module mod
      contains
        function ifun0()
          interface
            function ifun1(a)
              integer(4),dimension(:)::a
            end function
          end interface
          integer(4),dimension(5)::a
            ifun0 = ifun1(a)
        end function
      end module

      program main
       use mod
        kk = ifun0()
        print *,'pass'
      end  program
