       module abc
          integer g
	  contains
	  subroutine sub2
	  g=9
	  end subroutine
        end module
        program main
	  use abc
	  call sub2
	  print *,g
	  call sub
	  print *,g
          contains
            subroutine sub
              use abc
	      call sub2
            end subroutine
        end program
