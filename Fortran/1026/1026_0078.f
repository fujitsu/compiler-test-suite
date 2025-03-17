      module m1
	integer int1
      end module
      module m2
	integer int2
      end module
      module mo
      use m1
      use m2
      common /cmn/ aaa
      contains
	subroutine sub()
	aaa = 1
	int1 = 2
	int2 = 3
	end subroutine
      end module
      use mo
      call sub()
      print *,int1,int2,aaa
      end
