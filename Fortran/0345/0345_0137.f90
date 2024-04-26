      subroutine subsub(a)
        integer(4),dimension(:)::a
          a=a+1
      end subroutine

      module mod
      contains
        subroutine sub
          integer(4),dimension(5)::a
          interface
            subroutine subsub(a)
              integer(4),dimension(:)::a
            end subroutine
          end interface
            call subsub(a)
        end subroutine
      end module

      program main
       use mod
        call sub()
        print *,'pass'
      end  program
