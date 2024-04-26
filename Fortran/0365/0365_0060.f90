	subroutine sub1(n)
	type TAG
	integer,pointer,dimension(:):: x
	end type
	type(TAG) st(n)
	do i=1,n
	  allocate(st(i)%x(i))
	end do
	do i=1,n
	  st(i)%x = 1
	end do
	do i=1,n
	  deallocate(st(i)%x)
	end do
	end 
!
	subroutine sub2(n)
	type TAG
	integer,pointer,dimension(:):: x
	end type
	type(TAG) st(n)
	integer,target,dimension(n,n):: t
	t = 1
	do i=1,n
	  st(i)%x => t(i,:)
	end do
	do i=1,n
	  st(i)%x = st(i)%x + 1
	end do
	print *,sum(t)
	end 
!
	call sub1(10)
	call sub2(10)
	end
