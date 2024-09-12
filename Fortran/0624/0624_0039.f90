      call s1
      print *,'pass'
      end
      subroutine s1
      call ss1(1,-1)
      contains

      subroutine ss1(i,j)
      character a(j)*(i)
      a='123'
      if (any(lbound(a)/=1))call errtra
      end subroutine
      end
