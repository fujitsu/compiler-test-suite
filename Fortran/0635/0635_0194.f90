      subroutine fgPlus2(a,b,n)
      real*4,dimension(1:n) :: a,b
      integer di
      di=2
      do i=1,n-2
        a(i) = a(i+di) + b(i)
      enddo
      end

      program main
      integer,parameter :: N=1000
      real*4,parameter :: ANSWER=1998._4
      real*4,parameter :: DIFF=0.0_4
      real*4,dimension(1:N) :: a,b
      real*4 r
      a = 1._4
      b = 1._4
      call fgPlus2(a,b,N)
      r = sum(a)
      if (abs(r - ANSWER) .le. DIFF) then
         print *,"ok"
      else
         print *,"ng : ",r
      endif
      end program
