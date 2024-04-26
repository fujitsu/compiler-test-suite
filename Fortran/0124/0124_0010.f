
      program main

      integer, parameter:: N=4
      complex*8 a(N)
      complex*8 b(N)

      a = (0.0, 0.0)

      do i=1,N
         b(i) = a(i) + 1.0
      enddo

      if ((real(sum(b))-aimag(sum(b))).eq.4.0) then
         print *,"OK"
      else
         print *,"NG"
      endif

      end
