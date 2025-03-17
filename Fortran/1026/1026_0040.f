      module mo1
      common /cmn1/ com1
      contains
	subroutine sub1()
	com1=1
	com2 = 8
	end subroutine
      end
      module mo2
      common /cmn2/ com2
      contains
	subroutine sub2()
	com2=2
	end subroutine
      end
      use mo1
      use mo2
      call sub1()
      call sub2()
      print *,com1,com2
      end
