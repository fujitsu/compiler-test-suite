      module mo
      integer int
      contains
        recursive subroutine sub1()
        character*4 ch4
	ch4="****"
        end subroutine
        recursive subroutine sub2()
        character*5 ch5
	ch5="*****"
        end subroutine
      end module

      use mo
      call sub1()
      call sub2()
      end
