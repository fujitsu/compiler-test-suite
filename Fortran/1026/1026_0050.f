      module a
      integer int1
      contains
	function fun1()
	int1=1
	fun1 = 2
	end function
      end
      module b
      integer int2
      contains
	subroutine sub2()
	int2=2
	end subroutine
      end

      program main
      use a
      use b
      rc = fun1()
      call sub2()
      int1=3
      int2=4
      stop
      end
