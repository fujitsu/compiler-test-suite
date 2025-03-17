      module m1
	common /cmn1/ com1
      end module
      module m2
	common /cmn2/ com2
      end module
      module mo
      use m1
      use m2
      common /cmn/ aaa
      contains
	subroutine sub()
	aaa = 1
	com1 = 2
	com2 = 3
	end subroutine
      end module
      use mo
      call sub()
      print *,com1,com2,aaa
      end
