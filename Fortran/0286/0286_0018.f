      subroutine sub(a)
      complex*8 a(10000)
      do i=1,10000,3
         a(i) = 1
      enddo
      end
!
      program main
      complex*8 a(10000)
      do i=1,10000
         a(i) = i-1
      enddo
      call sub(a)
      if( a(1) .ne. 1 ) print *, 1,a(1)
      if( a(2) .ne. 1 ) print *, 2,a(2)
      if( a(3) .ne. 2 ) print *, 3,a(3)
      if( a(10000-2) .ne. 9997 ) print *, 10000-2,a(10000-2)
      if( a(10000-1) .ne. 9998 ) print *, 10000-1,a(10000-1)
      if( a(10000)   .ne. 1  ) print *, 10000, a(10000)
      print *,'PASS'
      end
