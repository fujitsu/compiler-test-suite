        module m1
	integer int1
	common  com1
        contains
          recursive subroutine sub()
          end subroutine
        end module
        module m2
	integer int2
	common /cmn2/ com2
        contains
          recursive subroutine sub()
          end subroutine
        end module

        program main
	use m1
        stop
        end program


