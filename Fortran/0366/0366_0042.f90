	subroutine test1
	real,allocatable,dimension(:)::a
	s=0
	do i=1,1000
	  allocate(a(1000))
	  a=1
	  s=a(100)
	  deallocate(a)
	end do
	print *,s
	end
	subroutine test2
	real,pointer,dimension(:)::a
	allocate(a(1000))
	do i=1,1000
	  a(i) = 1
	end do
	print *,a(10)
	deallocate(a)
	end
	call test1
	call test2
	end
