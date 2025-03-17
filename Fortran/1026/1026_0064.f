      character*10 c
      len=10
      call sub(c,len)
      end
      recursive subroutine sub(ch,len)
      character*(len) ch
      ch="TEST"
      call foo()
      contains
        subroutine foo()
	print *,ch
        end subroutine
      end subroutine
