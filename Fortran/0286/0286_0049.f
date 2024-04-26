      subroutine sub(a,x)
      integer*8  x(10000)
      integer*1 a(0:10000)
      do i=1,10000
         a(x(i)) = 1
      enddo
      end
!
      program main
      integer*8  x(10000)
      integer*1 a(0:10000)
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
      if( a(10000-2) .ne. 13 ) print *, 10000-2,a(10000-2)
      if( a(10000-1) .ne. 14 ) print *, 10000-1,a(10000-1)
      if( a(10000)   .ne. 1  ) print *, 10000, a(10000)
      print *,'PASS'
      end
