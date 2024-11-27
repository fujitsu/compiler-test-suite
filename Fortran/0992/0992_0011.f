        module mod
	 interface int1
	  function fun1()
	  end function
	  module procedure in2
	 end interface
	 contains
	 subroutine in1()
	  interface int1
	   function fun2()
	   end function
	  end interface
	  contains
	  subroutine inn1()
	   interface int1
	    function fun3()
	    end function
	   end interface
	  end subroutine
	 end subroutine
	 subroutine in2()
	  interface int1
	   function fun4()
	   end function
	  end interface
	 end subroutine
	end module
	end
