      module mo
      common /cmn/ com
      integer int
      contains
        subroutine sub1()
        real a1
	com = 1
	int = 1
	a1 = 1
        contains
          function fun1()
          real a2
	  com = 2
	  int = 2
	  a2 = 2
	  fun1 = 2
          end function
        end subroutine
      end module

      use mo
      call sub1()
      end
