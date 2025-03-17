      subroutine sub(a)
      character*2 a
      call sub2()
      contains
      subroutine sub2()
      integer a
      a=1
      end subroutine
      end subroutine

      character*2 a
      a="AA"
      call sub(a)
      end
