	module  moda
	real,allocatable::a(:)
	contains
	 subroutine sub(n)
	 do i=1,n
	   a(i+1) = a(i) + 1
	 end do
	 end subroutine sub
	 subroutine pri
	 print *,sum(a)
	 end subroutine pri
	end module moda
	program main
	use moda
	allocate(a(10))
	a=1
	call sub(9)
	call pri
	end
