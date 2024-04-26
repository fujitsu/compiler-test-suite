	module  moda
	real,allocatable,dimension(:)::a
	contains
	 subroutine init
	 allocate(a(10))
	 a=1
	 end subroutine init
	 subroutine pri
	 print *,sum(a)
	 end subroutine pri
	end
	program main
	use moda,b=>a,c=>a
	call init
	do i=1,9
	  b(i+1) = c(i) + 1
	  c(i+1) = b(i) + 1
	end do
	call pri
	end
