        module  m1
        contains
          subroutine sub()
          end subroutine
        end module

        program main
        use m1
	call sub()
        stop
        end program


