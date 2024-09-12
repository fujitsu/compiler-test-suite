      module mo
      contains
        recursive subroutine sub1()
        character*4 ch4
        ch4="****"
	print *,ch4
        end subroutine
        recursive subroutine sub1sub()
        character*0 ch0
        ch0="****"
	print *,ch0
        end subroutine
      end module
	subroutine sub2()
	real a
	a = 4
	print *,a
	return
	end
      use mo
      call sub1()
	call sub1sub()
	call sub2()
	call sub3()
      end
	subroutine sub3()
	integer i
	i = 12
	print *,i
	return
	end
