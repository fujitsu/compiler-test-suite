      real a(3) 
      a=2
      rc=sub(a,3)
      end
      recursive function sub(a,l)
      real a(1:l)
      sub = 2
      call foo()
      contains
        subroutine foo()
	sub=3
	 print *,a
        end subroutine
      end
