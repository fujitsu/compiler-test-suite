c 
      program main

      integer, parameter:: N=4
      complex*8 a(N)

      a = (2.0, 2.0)

c
      a(1) = a(1) + 1.0

      if ((real(sum(a))+aimag(sum(a))).eq.17.0) then
         print *,"OK"
      else
         print *,"NG"
      endif

      end
