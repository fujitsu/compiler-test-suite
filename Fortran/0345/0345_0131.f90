      subroutine sub(a)
        integer(4),dimension(:)::a
          a=a+1
      end subroutine

      program main
        integer(4),dimension(5)::a
        interface
          subroutine sub(a)
            integer(4),dimension(:)::a
          end subroutine
        end interface
          call sub(a)
        print *,'pass'
      end  program
