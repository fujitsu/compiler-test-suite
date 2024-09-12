	character(10),dimension(10) :: a
	a = fun()
	print *,a
	contains
	  function fun()
	  character(10),dimension(10) :: fun
	  fun  = "ABC"
	  end function
	end
