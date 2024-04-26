	interface 
	  function ext(n) result(res)
  	  complex*8,pointer,dimension(:):: res
	  end function
	end interface
	print *,fun(10),ext(10)
	contains
	  function fun(n) result(res)
  	  complex*8,pointer,dimension(:)::res
	  allocate(res(n))
	  res = 2
	  end function
	end
	function ext(n) result(res)
  	complex*8,pointer,dimension(:)::res
	allocate(res(n))
	res = 3
	end function
