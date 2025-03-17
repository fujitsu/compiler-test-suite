      module a
      integer int1
      common /cmn1/ com1
      contains
	subroutine sub1()
        common /sub1_cmn1/ sub1_com1
	int1=11
	com1=11
	sub1_com1=11
	contains
	  function fun1()
	  fun1=22
	int1=22
	com1=22
	sub1_com1=22
	  end function
	end subroutine
      end
      module b
      common /cmn2/ com2
      contains
	subroutine sub2()
        common /sub2_cmn2/ sub2_com2
	com2=33
	sub2_com2=33
	contains
	  function fun2()
       fun2=33
	com2=33
	sub2_com2=33
	  end function
	end subroutine
      end

      program main
      use a
      use b
      int1=1
      com1=1
      com2=2
      call sub1()
      call sub2()
      stop
      end
