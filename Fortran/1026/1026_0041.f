      module mo
      integer int
      contains
        subroutine sub1
        real a1
	int = 9
	a1 = 1.0
	call sub2()
        contains
          subroutine sub2
          real a2
	  int = 99
	  a2 = 2.0
	  print *,a1,int,a2
          end subroutine
        end subroutine
      end module
      use mo
      call sub1()
      print *,int
      end
