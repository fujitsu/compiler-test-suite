c 

      program main

      complex*8 a
      a = (1.0, 1.0)

      a = a + 1.0

      if ((real(a).eq.2.0).and.(aimag(a).eq.1.0)) then
         print *,"OK"
      else
         print *,"NG"
      endif
      end
