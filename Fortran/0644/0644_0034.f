      recursive subroutine g_sub()
      aaa = 3
      call l_sub1()
      contains
        subroutine l_sub1()
        print *,aaa
	aaa = 4
        print *,aaa
        end subroutine
      end
      call g_sub()
      end
