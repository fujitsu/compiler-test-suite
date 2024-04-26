	module  moda
	real,allocatable,dimension(:)::a
	end
	subroutine init
	use moda,c=>a,b=>a
	allocate(b(10))
	b=1
	c=b+2
	b=c-2
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
	call sub(9)
	print *,sum(a)
	end
