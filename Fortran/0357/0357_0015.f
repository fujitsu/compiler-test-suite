      character*10 a,c 
      call sub(a,c)
      end
      recursive subroutine sub(a,ch)
      character*(*) a,ch
      ch="test1"
      call foo()
      contains
        subroutine foo()
	print *,ch
        end subroutine
      end subroutine
