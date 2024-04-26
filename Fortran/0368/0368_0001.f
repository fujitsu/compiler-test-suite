	interface 
	  function ext(n) result(res)
  	  character*10 res(n)
	  end function
	end interface
	print *,fun(10),ext(10)
	contains
	  function fun(n) result(res)
  	  character*10 res(n)
	  res = 'ABC'
	  end function
	end
	function ext(n) result(res)
  	character*10 res(n)
	res = 'ABC'
	end function
