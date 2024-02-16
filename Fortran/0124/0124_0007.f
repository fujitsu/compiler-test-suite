c 

      program main

      complex*8 a

      a = (1.0, 2.0)

      a = a + a + 1.0

      if ((real(a).eq.3.0).and.(aimag(a).eq.4.0)) then
         print *,"OK"
      else
         print *,"NG"
      endif

      end
