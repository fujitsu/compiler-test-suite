c 

      program main

      integer, parameter:: N=4
      complex*8 a(N)
      complex*8 res

      a = (1.0, 2.0)

c
      do i=1,N/2
         a(i+1) = a(i+2) + 1.0
      enddo

      res = sum(a)
      if ((real(res)+aimag(res)).eq.14.0) then
         print *,"OK"
      else
         print *,"NG"
      endif

      end
