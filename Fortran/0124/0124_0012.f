
      program main

      integer, parameter:: N=4
      integer, parameter:: M=16
      complex*8 a(M,M)
      complex*8 b(M)

      a = (0.0, 0.0)
      b = (0.0, 0.0)

      do i=1,N
         do j=1,N
            a(i,j) = a(i,j) + 1.0
            b(i+j) = b(i*j) + 1.0
         enddo
      enddo

      if ((real(sum(a)+sum(b)) - aimag(sum(a)+sum(b)))
     &     .eq. 29.0) then
         print *,"OK"
      else
         print *,"NG"
      endif

      end
