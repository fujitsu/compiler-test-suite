      call pro
      print *,'pass'
      stop
      end
      subroutine pro
      structure /str/
       integer a
       real    b
       character*4 c
      endstructure 
      record /str/ i,j
      i.a=10
      i.b=10.0
      i.c='1234'
      j.a=10
      j.b=10.0
      j.c='1234'
      call sub1(i,j)
      call sub3(i)
      call sub2(i.c)
      call sub(i)
      end
      subroutine sub1(i)
      structure /str/
      integer a
      real    b
      character c*4
      endstructure
      record /str/ i,j
      j=i
      end
      subroutine sub(i)
      structure /str/
      integer a
      real    b
      character c*4
      integer d
      endstructure
      record /str/ i,j
      j=i
      end
      subroutine sub2(c)
      character*10 c,d
      d(1:5)=c(1:5)
      end
      subroutine sub3(i)
      character*10 i,j
      j(1:1)=i(1:1)
      end
