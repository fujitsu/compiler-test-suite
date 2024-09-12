      call sub01
      call sub02
      call sub03
      call sub04
      call sub05
      call sub06
      call sub07
      call sub08
      call sub09
      end
      subroutine sub01
      common /vsu1/a(10),b(10),s
      do 10 i=1,10
  10    a(i) = b(i) + s
      return
      end
      subroutine sub02
      common /vsu1/a(10),b(10),c(10)
      equivalence (c(1),s)
      do 10 i=1,10
  10    a(i) = b(i) + c(i)
      return
      end
      subroutine sub03
      real*8 q
      common /vsu1/a(10),b(10),q(10)
      do 10 i=1,10
  10    a(i) = b(i) + q(i)
      return
      end
      subroutine sub04
      real*8 q(10)
      common /vsu1/a(10),b(10),c(10)
      equivalence (c(1),q(1))
      do 10 i=1,10
  10    a(i) = b(i) + c(i)
      return
      end
      subroutine sub05
      common /vsu1/a(10),b(10),c(10)
      data a/10*0./
      do 10 i=1,10
  10    a(i) = b(i) + c(i)
      return
      end
      subroutine sub06
      common /vsu1/a(10),b(10),c(10)
      do 10 i=1,10
  10    a(i) = b(i) + c(5)
      return
      end
      subroutine sub07
      common /vsu1/a(10),b(10),c(10)
      do 10 i=1,10
  10    a(i) = b(i) + a(10)
      return
      end
      subroutine sub08
      common /vsu1/a(10),b(10),c(10)
      do 10 i=1,10
  10    a(i) = b(i) + c(i)
      write(6,*) a
      return
      end
      subroutine sub09
      common /vsu1/a(10),b(10),c(10)
      call sub99(a,b,c)
      return
      end
      subroutine sub99(a,b,c)
      return
      end
