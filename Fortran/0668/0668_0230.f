      common /blk/inc1,inc2
      inc1 = 1
      inc2 = 1
      call sub1
      call sub2
      call sub3
      inc1 = 1
      inc2 = 1
      call sub4
      call sub5
      call sub6
      call sub8
      stop
      end
      subroutine sub1
      real*4 a(100),b(100)
      common /blk/inc1,inc2
      equivalence(inc2,b(1))
      do 10 i=1,100,inc1
         a(i) = i
   10 continue
      write(6,*) a
      return
      end
      subroutine sub2
      real*4 a(100),b(100)
      common /blk/inc1,inc2
      equivalence(inc2,b(1))
      do 10 i=1,100,inc1
         a(i) = i
         b(i) = a(i) + i
   10 continue
      write(6,*) b
      return
      end
      subroutine sub3
      real*4 a(100),b(100)
      common /blk/inc1,inc2
      equivalence(inc2,b(1))
      do 10 i=1,100,inc2
         a(i) = i
         b(i) = a(i) + i
   10 continue
      write(6,*) b
      return
      end
      subroutine sub4
      real*4 a(100),b(100)
      common /blk/inc1,inc2
      equivalence(inc2,b(1))
      do 10 i=1,100,inc2
        a(i) = i
        a(i) = a(i) + i
        a(i) = a(i) / 2
        inc2 = a(i) + i
   10 continue
      write(6,*) inc2
      return
      end
      subroutine sub5
      real*4 a(100)
      equivalence(inc1,inc2)
      inc1 = 1
      do 10 i=1,100,inc1
         a(i) = i
         inc2 = a(i) - i
   10 continue
      write(6,*) inc2
      return
      end
      subroutine sub6
      real*4 a(100)
      inc1 = 1
      do 10 i=1,100,inc1
         a(i) = i
         a(i) = a(i) / inc1
         call sub7(inc1)
   10 continue
      write(6,*) a,inc1
      return
      end
      subroutine sub7(inc1)
      inc1 = 1
      return
      end
      subroutine sub8
      real*4 a(100),b(100,100)
      inc1 = 1
      do 10 i=1,100,inc1
         a(i) = i
         do 10 j=1,100
            b(i,j) = j
            call sub7(inc1)
   10 continue
      write(6,*) a,b,inc1
      return
      end
