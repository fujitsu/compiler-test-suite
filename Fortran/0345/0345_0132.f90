      function ifun(a)
        integer(4),dimension(:)::a
          a=a+1
          ifun=1
      end function

      program main
        integer(4),dimension(5)::a
        interface
          function ifun(a)
            integer(4),dimension(:)::a
          end function
        end interface
          k = ifun(a)
         print *,'pass'
      end  program
