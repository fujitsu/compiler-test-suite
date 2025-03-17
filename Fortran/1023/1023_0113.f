      character*10 c 
      call sub(c)
      end
      recursive subroutine sub(ch)
      character*(*) ch
      ch="Test"
      call foo()
      contains
        subroutine foo()
	print *,ch
        end subroutine
      end subroutine
