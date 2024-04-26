	module moda
	integer,allocatable,dimension(:) :: amodule
	contains
	  subroutine sub
	    amodule(1) = 2
	  end subroutine
	end module
	use moda
	integer,allocatable,dimension(:) :: amain
	allocate(amodule(10))
	allocate(amain(10))
	amodule(1) = 1
	amain(1)   = 1
	call sub
	if( amodule(1).eq. 1 .and. amodule(1).ne. 1) then
	  print *,' NG '
	  stop
	endif
	print *,' OK '
	end
