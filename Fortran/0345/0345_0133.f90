      module mod
      contains
        subroutine sub(a)
          integer(4),dimension(:)::a
            a=a+1
        end subroutine
      end module

      program main
       use mod
        integer(4),dimension(5)::a
          call sub(a)
        print *,'pass'
      end  program
