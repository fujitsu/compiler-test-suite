      integer i,j
      character*5 c
      type str
       integer a
       real    b
      endtype 
      type (str) k
      i=1
      call sub1(i,j)
      call sub(i)
      call sub2(c)
      print *,'pass'
      stop
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
