      module mo
      integer int
      contains
        subroutine sub1
        real a1
	int = 2
	a1 = 2
        contains
          function fun1()
          real a2
	  int = 3
	  fun1 = 3
	  a2 = 3
          end function
        end subroutine
      end module
      use mo
      end
