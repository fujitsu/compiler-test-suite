      subroutine fgUnknown(a,b,c,n)
      real*4,dimension(1:n) :: a,b
      integer,dimension(1:n) :: c
      do i=1,n
        a(c(i)) = a(c(i)) + b(c(i))
      enddo
      end

      program main
      integer,parameter :: N=1000
      real*4,parameter :: ANSWER=2000._4
      real*4,parameter :: DIFF=0.0_4
      real*4,dimension(1:N) :: a,b
      real*4 r
      integer,dimension(1,N) :: c
      a = 1._4
      b = 1._4
      c = 1
      call fgUnknown(a,b,c,N)
      r = sum(a)
      if (abs(r - ANSWER) .le. DIFF) then
         print *,"ok"
      else
         print *,"ng : ",r
      endif
      end program
