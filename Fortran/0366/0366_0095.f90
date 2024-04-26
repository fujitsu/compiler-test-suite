	module  moda
	real,allocatable,dimension(:)::a
	contains
	subroutine init
	allocate(a(1000))
	a=1
	end subroutine
	end
	subroutine sub(n)
	use moda,b=>a
	do i=1,n
	  b(i+1) = b(i) + 1
	end do
	end
	program main
	use moda
	call init
	call sub(999)
	print *,sum(a)
	end

