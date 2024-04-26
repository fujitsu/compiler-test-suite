      module mod
      contains
        function ifun(a)
          integer(4),dimension(:)::a
            a=a+1
            ifun=1
        end function
        subroutine sub()
          integer(4),dimension(5)::a
            k = ifun(a)
        end subroutine
      end module

      program main
       use mod
        call sub()
        print *,'pass'
      end  program
