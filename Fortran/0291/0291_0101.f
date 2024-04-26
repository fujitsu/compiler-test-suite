	module moda
	integer,allocatable,dimension(:) :: a
	contains
	subroutine sub
	a(1) = 2
	end subroutine
	end
	use moda
	allocate(a(10))
	a(1) = 1
	call sub
	if( a(1) .eq. 1 ) then 
	  print *,' NG '
	  stop
	endif
	print *,' OK '
	end

