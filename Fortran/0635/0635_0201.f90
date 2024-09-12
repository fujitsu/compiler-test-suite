      subroutine fgKMissing(a,b,n)
      real*8,dimension(1:n,1:n,1:n) :: a,b
      integer foo
      foo=1

      do i=1,n
        do j=1,n
          do k=1,n
            a(i,j,foo) = a(i,j,foo) + b(i,j,foo)
          enddo
        enddo
      enddo
      end

      program main
      integer,parameter :: N=100
      real*8,parameter :: ANSWER=2000000._8
      real*4,parameter :: DIFF=0.0_4
      real*8,dimension(1:N,1:N,1:N) :: a,b
      real*8 r
      a = 1._4
      b = 1._4
      call fgKMissing(a,b,N)

      r = sum(a)

      if (abs(r - ANSWER) .le. DIFF) then
         print *,"ok"
      else
         print *,"ng : ",r
      endif
      end program
