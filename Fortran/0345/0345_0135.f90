      module mod
      contains
        subroutine subsub(a)
          integer(4),dimension(:)::a
            a=a+1
        end subroutine
        subroutine sub
          integer(4),dimension(5)::a
            call subsub(a)
        end subroutine
      end module

      program main
       use mod
        call sub()
        print *,'pass'
      end  program
