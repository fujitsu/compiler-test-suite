	subroutine integer1
	implicit none
	integer*1,dimension(10):: a
	a = fun()
	print *,sum(a)
	contains
	  function fun() result(res)
	  integer*1,dimension(10):: res
	  res = 2
	  end function 
	end
	subroutine integer2
	implicit none
	integer*2,dimension(10):: a
	a = fun()
	print *,sum(a)
	contains
	  function fun() result(res)
	  integer*2,dimension(10):: res
	  res = 2
	  end function 
	end
	subroutine integer4
	implicit none
	integer*4,dimension(10):: a
	a = fun()
	print *,sum(a)
	contains
	  function fun() result(res)
	  integer*4,dimension(10):: res
	  res = 2
	  end function 
	end
	subroutine integer8
	implicit none
	integer*8,dimension(10):: a
	a = fun()
	print *,sum(a)
	contains
	  function fun() result(res)
	  integer*8,dimension(10):: res
	  res = 2
	  end function 
	end
	call integer1
	call integer2
	call integer4
	call integer8
	end
