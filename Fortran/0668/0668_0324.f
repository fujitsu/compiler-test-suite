      program main
      real*8 a(1001,1001),b(1001,1001),c(1001,1001)
      real*8 d(1001,1001),e(1001,1001),f(1001,1001)
      common /com/a,b,c
      common /msu/d,e,f
      do 10 i=1,1001
        do 10 j=1,1001
      a(i,j) = 1.0
      b(i,j) = 2.0
      c(i,j) = 3.0
      d(i,j) = 1.0
      e(i,j) = 2.0
      f(i,j) = 3.0
   10 continue
      write(6,*) (a(1000,i)+1.0,b(1000,i)+1.0,c(1000,i)+1.0,i=10,20)
      call sub1(a,b,c)
      call sub2(a,b,c)
      call sub3(a,b,c)
      call sub4(a,b,c)
      call sub5(a,b,c)
      stop
      end
      subroutine sub1(a,b,c)
      real*8 a(1001,1001),b(1001,1001),c(1001,1001)
      real*8 d(1001,1001),e(1001,1001),f(1001,1001)
      common /msu/d,e,f
      do 20 i=1,1000
       a(21,1) = 3.0 * d(21,1)
        do 30 j=1,1000
      a(i,j) = a(i,j) + b(i,j) - e(i,1)
      a(22,1) = 4.0 * f(21,j)
   30 continue
       a(i,j) = c(i,j) - b(i,j)
   20 continue
      write(6,*) (a(i,1)+1.0,b(i,1)+1.0,c(i,1)+1.0,i=20,30)
      return
      end
      subroutine sub2(a,b,c)
      real*8 a(1001,1001),b(1001,1001),c(1001,1001)
      real*8 d(1001,1001),e(1001,1001),f(1001,1001)
      common /msu/d,e,f
      do 60 i=1,1000
        do 70 j=1,1000
      a(42,1) = 4.0
      a(i,j) = c(41,1) + b(i,j) - e(i,1)
      b(i,j) = a(i,1) - b(i,j) * f(j,i)
      c(i,j) = 6.0
   70 continue
   60 continue
      write(6,*) (a(i,1)+1.0,b(i,1)+1.0,c(i,1)+1.0,i=40,50)
      return
      end
      subroutine sub3(a,b,c)
      real*8 a(1001,1001),b(1001,1001),c(1001,1001)
      real*8 d(1001,1001),e(1001,1001),f(1001,1001)
      common /msu/d,e,f
      do 80 i=1,1000
        do 90 j=1,1000
      a(i,j) = 4.0 * f(41,1)
      a(i,j) = c(41,1) - b(i,j)
      b(i,j) = a(i,1) + b(i,j)
      c(i,j) = 6.0
   90 continue
   80 continue
      write(6,*) (a(i,1)+1.0,b(i,1)+1.0,c(i,1)+1.0,i=40,50)
      return
      end
      subroutine sub4(a,b,c)
      real*8 a(1001,1001),b(1001,1001),c(1001,1001)
      real*8 d(1001,1001),e(1001,1001),f(1001,1001)
      common /msu/d,e,f
      do 100 i=1,10
        do 110 j=1,10
      a(i,j) = b(i,j) + c(i,j)
      b(1,j) = 4.0
      c(1,j) = b(i,j) - a(i,1)
  110 continue
      a(i,1) = 3.0 - f(i,1)
  100 continue
      write(6,*) (a(i,1)+1.0,b(i,1)+1.0,c(i,1)+1.0,i=1,100)
      return
      end
      subroutine sub5(a,b,c)
      real*8 a(1001,1001),b(1001,1001),c(1001,1001)
      real*8 d(1001,1001),e(1001,1001),f(1001,1001)
      common /msu/d,e,f
      stop
      end
