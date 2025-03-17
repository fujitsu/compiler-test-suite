      module mo1
      common /cmn1/ com1
      contains
	subroutine sub1(name)
	character*(*) name
	com1 = 1
	print *,name
	end subroutine
      end
      module mo2
      common /cmn2/ com2
      contains
	subroutine sub2(num)
	com2 = 2
	print *,num
	end subroutine
      end

      use mo1
      use mo2
      call sub1("abcdefg")
      call sub2(10)
      end
