      subroutine sub(a,x)
      integer*4  x(10000)
      real*16 a(0:10000)
      do i=1,10000
         a(x(i)) = 1
      enddo
      end
!
      program main
      integer*4  x(10000)
      real*16 a(0:10000)
      do i=1,10000
         a(i) = i-1
         x(i) = 0
         if( mod(i,3) .eq. 1 ) x(i) = i
      enddo
      call sub(a,x)
      if( a(0) .ne. 1 ) print *, 0,a(1)
      if( a(1) .ne. 1 ) print *, 1,a(1)
      if( a(2) .ne. 1 ) print *, 2,a(2)
      if( a(3) .ne. 2 ) print *, 3,a(3)
      if( a(10000-2) .ne. 9997 ) print *, 10000-2,a(10000-2)
      if( a(10000-1) .ne. 9998 ) print *, 10000-1,a(10000-1)
      if( a(10000)   .ne. 1  ) print *, 10000, a(10000)
      print *,'PASS'
      end
