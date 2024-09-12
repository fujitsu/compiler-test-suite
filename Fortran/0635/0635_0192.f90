      subroutine fgNull(a,b,n)
      real*4,dimension(1:n*2) :: a,b
      do i=1,n
        a(i) = a(i+n) + b(i)
      enddo
      end

      program main
      integer,parameter :: N=1000
      integer,parameter :: ELE=N*2 
      real*4,parameter :: ANSWER=3000._4
      real*4,parameter :: DIFF=0.0_4
      real*4,dimension(1:ELE) :: a,b
      real*4 r
      a = 1._4
      b = 1._4
      call fgNull(a,b,N)
      r = sum(a)
      if (abs(r - ANSWER) .le. DIFF) then
         print *,"ok"
      else
         print *,"ng : ",r
      endif
      end program
