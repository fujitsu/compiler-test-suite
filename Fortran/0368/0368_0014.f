	module abc
	  integer g
	end module
	program main
	  real abc
          print *,'ok'
	  contains
	    subroutine sub
	      use abc
	    end subroutine
	end program
