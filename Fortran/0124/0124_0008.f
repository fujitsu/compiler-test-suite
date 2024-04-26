
      program main

      complex*8 a
      complex*8 b
      complex*8 c

      a = (2.0, 2.0)

      b = a * 2.0
      c = b + 2.0

      if ((real(c)+aimag(c)).eq.10.0) then
         print *,"OK"
      else
         print *,"NG"
      endif

      end
