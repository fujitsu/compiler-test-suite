      module a
      integer int1
      contains
	subroutine sub1()
	contains
	  function fun1()
	  fun1=1
	  end function
	  function fun2()
	  fun2=1
	  end function
	  function fun3()
	  fun3=1
	  end function
	end subroutine
      end
      module b
      integer int2
      contains
	subroutine sub2()
	contains
	  function fun4()
	  fun4=1
	  end function
	  function fun5()
	  fun5=1
	  end function
	  function fun6()
	  fun6=1
	  end function
	end subroutine
      end

      use a
      use b
      call sub1()
      call sub2()
      end
