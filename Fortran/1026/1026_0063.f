      module mo
      common /cmn1/ com1
      integer int
      contains
        subroutine sub1()
        real a1
	com1=1
	int=1
	a1=1
	call sub2()
        contains
          subroutine sub2()
	  common /cmn2/ com2
          real a2
	  com1=2
	  int=2
	  com2=2
	  a2=2
          end subroutine
        end subroutine

      end module
      use mo
      call sub1()
      end
