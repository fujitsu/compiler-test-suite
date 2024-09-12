      subroutine fgIP2M2_JP2M2(a,b,n)
      real*8,dimension(1:n,1:n,1:n) :: a,b
      integer di,dj
      di=2
      dj=2

      do i=di+1,n-di
        do j=dj+1,n-dj
          do k=1,n
            a(i,j,k) = a(i+di,j+dj,k) + b(i,j,k)
            a(i,j,k) = a(i-di,j-dj,k) + b(i,j,k)
          enddo
        enddo
      enddo
      end

      program main
      integer,parameter :: N=100
      real*8,parameter :: ANSWER=16209600._8
      real*4,parameter :: DIFF=0.0_4
      real*8,dimension(1:N,1:N,1:N) :: a,b
      real*8 r
      a = 1._4
      b = 1._4
      call fgIP2M2_JP2M2(a,b,N)
      r = sum(a)
      if (abs(r - ANSWER) .le. DIFF) then
         print *,"ok"
      else
         print *,"ng : ",r
      endif
      end program
