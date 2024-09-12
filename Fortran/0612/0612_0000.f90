	subroutine real4
	real*4,dimension(10):: a
	a = fun()
	print *,sum(a)
	contains
	  function fun() result(res)
	  real*4,dimension(10):: res
	  res = 1.0
	  end function 
	end
	subroutine real8
	real*8,dimension(10):: a
	a = fun()
	print *,sum(a)
	contains
	  function fun() result(res)
	  real*8,dimension(10):: res
	  res = 1.0
	  end function 
	end
	subroutine real16
	real*16,dimension(10):: a
	a = fun()
	print *,sum(a)
	contains
	  function fun() result(res)
	  real*16,dimension(10):: res
	  res = 1.0
	  end function 
	end
	subroutine complex4
	complex(4),dimension(10):: a
	a = fun()
	print *,sum(a)
	contains
	  function fun() result(res)
	  complex(4),dimension(10):: res
	  res = 1.0
	  end function 
	end
	subroutine complex8
	complex(8),dimension(10):: a
	a = fun()
	print *,sum(a)
	contains
	  function fun() result(res)
	  complex*8,dimension(10):: res
	  res = 1.0
	  end function 
	end
	subroutine complex16
	complex(16),dimension(10):: a
	a = fun()
	print *,sum(a)
	contains
	  function fun() result(res)
	  complex(16),dimension(10):: res
	  res = 1.0
	  end function 
	end
	call real4
	call real8
	call real16
	call complex4
	call complex8
	call complex16
	end
