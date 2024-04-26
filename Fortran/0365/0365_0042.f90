	module moda
	type TAG
	  real*4 dim(10)
	end type
	contains
	function s_fun(i) result(st)
	type(TAG) st
	st%dim = i
	end function
	end module
!
	program main
	use moda
	type(TAG) st(1000)
	do i=1,1000
	  st(i) = s_fun(i)
	end do
	do i=1,1000,111
	  print *,st(i)%dim(1)
	end do
	end
