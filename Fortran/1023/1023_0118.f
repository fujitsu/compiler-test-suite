      recursive subroutine g_sub()
      aaa = 3
      bbb = 5
      call l_sub1()
      contains
        subroutine l_sub1() 
	print *,aaa,bbb
	aaa = 6
	bbb = 7
        end subroutine
        subroutine l_sub2() 
	print *,aaa
        end subroutine
      end 

      call g_sub()
      end
