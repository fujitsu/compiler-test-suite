      call pro
      print *,'pass'
      stop
      end
      subroutine pro
      integer i,j
      character*5 c
      i=1
      j=10
      c='abcde'
      call sub1(i,j)
      call sub(i)
      call sub2(c)
      end
      subroutine sub1(i)
      integer i
      integer a
      a = i
      end
      subroutine sub(i)
      real i
      integer a
      a = i
      end
      subroutine sub2(c)
      character*10 c,d
      d(1:5)=c(1:5)
      end
