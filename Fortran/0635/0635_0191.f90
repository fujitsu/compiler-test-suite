      subroutine fgMissing(a,b,n)
      real*4,dimension(1:n) :: a,b
      integer foo
      foo=5
      do i=1,n
        a(foo) = a(foo) + b(foo)
      enddo
      end

      program main
      integer,parameter :: N=1000
      real*4,parameter :: ANSWER=2000._4
      real*4,parameter :: DIFF=0.0_4
      real*4,dimension(1:N) :: a,b
      real*4 r
      a = 1._4
      b = 1._4
      call fgMissing(a,b,N)
      r = sum(a)
      if (abs(r - ANSWER) .le. DIFF) then
         print *,"ok"
      else
         print *,"ng : ",r
      endif
      end program
