        module m1
	integer int1
        contains
          subroutine sub()
	  int1 = 888
          return
        end subroutine
        end module

        module m2
	integer int2
        contains
          subroutine sub2()
	  use m1
	  int2 = 2
	  print *,int1,int2
          return
        end subroutine
        end module

        program main
        use m1
        use m2
	call sub()
	call sub2()
	int1 = 3
        stop
        end program


