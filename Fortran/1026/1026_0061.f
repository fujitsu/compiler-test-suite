      subroutine sub1(int)
      int = 3
      call sub2()
	print *,int
      entry ent
      contains
        subroutine sub2()
	int = 2
	print *,int
        end subroutine
      end subroutine
      call sub1(int)
	print *,int
      end
