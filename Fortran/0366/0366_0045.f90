	subroutine test1
	type TAG
	  real,dimension(1000)::a
	end type
	type(TAG) st
	do i=1,1000
	  st%a(i) = 1
 	end do
	print *,st%a(10)
	end
	subroutine test2
	type TAG
	  real::a
	end type
	type(TAG),dimension(1000):: st
	do i=1,1000
	  st(i)%a = 1
 	end do
	print *,st(10)%a
	end
	subroutine test3
	type TAG2
	   real::a
	end type
	type TAG
	   type(TAG2)::s
	end type
	type(TAG),dimension(1000):: st
	do i=1,1000
	  st(i)%s = TAG2(1)
 	end do
	print *,st(10)%s
	end
	call test1
	call test2
	call test3
	end
