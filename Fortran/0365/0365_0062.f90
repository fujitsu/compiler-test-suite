	type TAG
	  integer,pointer,dimension(:) :: p
	end type
	parameter(n = 10)
	logical l(n)
	integer,dimension(n),target :: t
	type(TAG) st(n)
	do i=1,n
	st(i)%p => t(i:)
	end do
	call sub(l,st,t,n)
	print *,l
!
        contains
	subroutine sub(l,st,t,n)
	integer,dimension(n),target :: t
	type(TAG) st(n)
	logical l(n)
	do i=1,n
	  l(i) = associated(st(i)%p,t(i:))
	end do
	end subroutine
	end
