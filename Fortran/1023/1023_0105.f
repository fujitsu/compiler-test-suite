      module mo
      integer int
      contains
        subroutine sub
	a=1
	call sub2()
	contains
	  subroutine sub2
	  b=1
	  end subroutine
        end subroutine
      end module

      use mo
      int=2
      call sub()
      end
