      module mo
      integer l
      contains
      subroutine sub()
      common /m1/a,i
      a = 1
      i = 2
      l = 3
      print *,a,i,l
      end subroutine
      end module
      use mo
      call sub()
      stop
      end
