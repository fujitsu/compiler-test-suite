c 

      program main

      integer, parameter:: N=4
      integer, parameter:: M=16
      complex*8 a(M)
      complex*16 b(M)

      a = (0.0, 0.0)
      b = a

      do i=1,N
         do j=1,N
            a(i*j) = a(5) + 1.0
            b(i*j) = a(i*j) + 1.0
         enddo
      enddo

      if ((real(sum(a)+sum(b)).eq.27.0).and.
     &     (aimag(sum(a)+sum(b)).eq.0.0)) then
         print *,"OK"
      else
         print *,"NG"
      endif

      end
